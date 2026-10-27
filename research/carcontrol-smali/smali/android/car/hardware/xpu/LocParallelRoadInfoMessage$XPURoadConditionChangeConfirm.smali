.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirmOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XPURoadConditionChangeConfirm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirmOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x3

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private errorCode_:I

.field private navigationId_:J

.field private requestId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2798
    new-instance v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-direct {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    .line 2799
    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2366
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2367
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    const-wide/16 v1, 0x0

    .line 2368
    iput-wide v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    .line 2369
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    return-void
.end method

.method static synthetic access$4100()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1

    .line 2361
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;I)V
    .locals 0

    .line 2361
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->setRequestId(I)V

    return-void
.end method

.method static synthetic access$4300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)V
    .locals 0

    .line 2361
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->clearRequestId()V

    return-void
.end method

.method static synthetic access$4400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;J)V
    .locals 0

    .line 2361
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$4500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)V
    .locals 0

    .line 2361
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$4600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;I)V
    .locals 0

    .line 2361
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->setErrorCode(I)V

    return-void
.end method

.method static synthetic access$4700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)V
    .locals 0

    .line 2361
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->clearErrorCode()V

    return-void
.end method

.method private clearErrorCode()V
    .locals 1

    const/4 v0, 0x0

    .line 2473
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2438
    iput-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    return-void
.end method

.method private clearRequestId()V
    .locals 1

    const/4 v0, 0x0

    .line 2403
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1

    .line 2803
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2572
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;
    .locals 1

    .line 2575
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2549
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2555
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2513
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2520
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2560
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2567
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2537
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2544
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2525
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2532
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;",
            ">;"
        }
    .end annotation

    .line 2809
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setErrorCode(I)V
    .locals 0

    .line 2462
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 2427
    iput-wide p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    return-void
.end method

.method private setRequestId(I)V
    .locals 0

    .line 2392
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 2706
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2791
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2782
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    monitor-enter p1

    .line 2783
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2784
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2786
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2788
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2734
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2736
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 2741
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x8

    if-eq p1, p3, :cond_5

    const/16 p3, 0x10

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

    if-eq p1, p3, :cond_3

    .line 2747
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 2764
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    goto :goto_1

    .line 2759
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    goto :goto_1

    .line 2754
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I
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

    .line 2772
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2774
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2770
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2775
    :goto_3
    throw p1

    .line 2779
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p1

    .line 2720
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 2721
    check-cast p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    .line 2722
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    if-eqz v3, :cond_9

    move v4, v2

    goto :goto_5

    :cond_9
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    .line 2724
    iget-wide v5, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_6

    :cond_a
    move p1, v1

    :goto_6
    iget-wide v8, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_b

    move v7, v2

    goto :goto_7

    :cond_b
    move v7, v1

    :goto_7
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    .line 2726
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    if-eqz p3, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    .line 2728
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 2717
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm$Builder;-><init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 2711
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    return-object p1

    .line 2708
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;

    invoke-direct {p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;-><init>()V

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

.method public getErrorCode()I
    .locals 1

    .line 2451
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 2416
    iget-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    .line 2381
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 2490
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2494
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 2496
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2498
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 2500
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2502
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 2504
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2506
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2478
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->requestId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2479
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 2481
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 2482
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2484
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeConfirm;->errorCode_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 2485
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    return-void
.end method
