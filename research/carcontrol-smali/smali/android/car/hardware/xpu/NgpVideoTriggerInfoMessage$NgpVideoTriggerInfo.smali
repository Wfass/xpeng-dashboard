.class public final Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "NgpVideoTriggerInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NgpVideoTriggerInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;",
        "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCENE_DURATION_FIELD_NUMBER:I = 0x3

.field public static final SCENE_PRIORITY_FIELD_NUMBER:I = 0x4

.field public static final TRAJECTORY_ID_FIELD_NUMBER:I = 0x1

.field public static final TRIGGER_STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private sceneDuration_:I

.field private scenePriority_:I

.field private trajectoryId_:I

.field private triggerStatus_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 930
    new-instance v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    .line 931
    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 371
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 372
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    .line 373
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    .line 374
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    .line 375
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1

    .line 366
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->setTrajectoryId(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->clearTrajectoryId()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->setTriggerStatusValue(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->setTriggerStatus(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;)V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->clearTriggerStatus()V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->setSceneDuration(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->clearSceneDuration()V

    return-void
.end method

.method static synthetic access$800(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;I)V
    .locals 0

    .line 366
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->setScenePriority(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->clearScenePriority()V

    return-void
.end method

.method private clearSceneDuration()V
    .locals 1

    const/4 v0, 0x0

    .line 503
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    return-void
.end method

.method private clearScenePriority()V
    .locals 1

    const/4 v0, 0x0

    .line 538
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    return-void
.end method

.method private clearTrajectoryId()V
    .locals 1

    const/4 v0, 0x0

    .line 409
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    return-void
.end method

.method private clearTriggerStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1

    .line 935
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 644
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;
    .locals 1

    .line 647
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 585
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 592
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 597
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 604
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;",
            ">;"
        }
    .end annotation

    .line 941
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSceneDuration(I)V
    .locals 0

    .line 492
    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    return-void
.end method

.method private setScenePriority(I)V
    .locals 0

    .line 527
    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    return-void
.end method

.method private setTrajectoryId(I)V
    .locals 0

    .line 398
    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    return-void
.end method

.method private setTriggerStatus(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;)V
    .locals 0

    .line 454
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-virtual {p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    return-void
.end method

.method private setTriggerStatusValue(I)V
    .locals 0

    .line 443
    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 831
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 923
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 914
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    monitor-enter p1

    .line 915
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 916
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 918
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 920
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 860
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 862
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 867
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 p3, 0x8

    if-eq p1, p3, :cond_6

    const/16 p3, 0x10

    if-eq p1, p3, :cond_5

    const/16 p3, 0x18

    if-eq p1, p3, :cond_4

    const/16 p3, 0x20

    if-eq p1, p3, :cond_3

    .line 873
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 896
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    goto :goto_1

    .line 891
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    goto :goto_1

    .line 884
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 886
    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    goto :goto_1

    .line 880
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I
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

    .line 904
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 906
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 902
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 907
    :goto_3
    throw p1

    .line 911
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p1

    .line 845
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 846
    check-cast p3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    .line 847
    iget p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    .line 849
    iget p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_7

    :cond_c
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    .line 850
    iget p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_8

    :cond_d
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_9

    :cond_e
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    .line 852
    iget p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_a

    :cond_f
    move v0, v1

    :goto_a
    iget p3, p3, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    if-eqz p3, :cond_10

    move v1, v2

    :cond_10
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    .line 854
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 842
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo$Builder;-><init>(Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 836
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    return-object p1

    .line 833
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;-><init>()V

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

.method public getSceneDuration()I
    .locals 1

    .line 481
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    return v0
.end method

.method public getScenePriority()I
    .locals 1

    .line 516
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 558
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 562
    iget v1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 564
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    sget-object v2, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NO_ACTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 567
    iget v2, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    .line 568
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 570
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 572
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 574
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 576
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTrajectoryId()I
    .locals 1

    .line 387
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    return v0
.end method

.method public getTriggerStatus()Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;
    .locals 1

    .line 432
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->forNumber(I)Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 433
    sget-object v0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->UNRECOGNIZED:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    :cond_0
    return-object v0
.end method

.method public getTriggerStatusValue()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->trajectoryId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 544
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 546
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->NO_ACTION:Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$RecordTrigger;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 547
    iget v1, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->triggerStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 549
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->sceneDuration_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 550
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 552
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/NgpVideoTriggerInfoMessage$NgpVideoTriggerInfo;->scenePriority_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 553
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    return-void
.end method
