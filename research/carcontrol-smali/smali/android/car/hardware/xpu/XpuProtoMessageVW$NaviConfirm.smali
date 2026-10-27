.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirmOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviConfirm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirmOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x1

.field public static final ODD_FLAG_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private navigationId_:J

.field private oddFlag_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4049
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    .line 4050
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3702
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 3703
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    const/4 v0, 0x0

    .line 3704
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    return-void
.end method

.method static synthetic access$5900()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1

    .line 3697
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;J)V
    .locals 0

    .line 3697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$6100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;)V
    .locals 0

    .line 3697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$6200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;I)V
    .locals 0

    .line 3697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->setOddFlag(I)V

    return-void
.end method

.method static synthetic access$6300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;)V
    .locals 0

    .line 3697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->clearOddFlag()V

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3738
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    return-void
.end method

.method private clearOddFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 3773
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1

    .line 4054
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
    .locals 1

    .line 3865
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;
    .locals 1

    .line 3868
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3842
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3848
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3806
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3813
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3853
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3860
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3830
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3837
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3818
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3825
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;",
            ">;"
        }
    .end annotation

    .line 4060
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 3727
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    return-void
.end method

.method private setOddFlag(I)V
    .locals 0

    .line 3762
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 3964
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4042
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4033
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    monitor-enter p1

    .line 4034
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4035
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 4037
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4039
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 3990
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 3992
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 3997
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    .line 4003
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 4015
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    goto :goto_1

    .line 4010
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J
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

    .line 4023
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 4025
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4021
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4026
    :goto_3
    throw p1

    .line 4030
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p1

    .line 3978
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 3979
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    .line 3980
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_7

    move p1, v2

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_8

    move v7, v2

    goto :goto_5

    :cond_8
    move v7, v1

    :goto_5
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    .line 3982
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    if-eqz p3, :cond_a

    move v1, v2

    :cond_a
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    .line 3984
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 3975
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 3969
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    return-object p1

    .line 3966
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;-><init>()V

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

.method public getNavigationId()J
    .locals 2

    .line 3716
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    return-wide v0
.end method

.method public getOddFlag()I
    .locals 1

    .line 3751
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 3787
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3791
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 3793
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3795
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 3797
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3799
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3778
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3779
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3781
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviConfirm;->oddFlag_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 3782
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    return-void
.end method
