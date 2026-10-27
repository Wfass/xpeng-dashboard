.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RotationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PITCH_FIELD_NUMBER:I = 0x2

.field public static final ROLL_FIELD_NUMBER:I = 0x1

.field public static final YAW_FIELD_NUMBER:I = 0x3


# instance fields
.field private pitch_:D

.field private roll_:D

.field private yaw_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19298
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    .line 19299
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18866
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 18867
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    .line 18868
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    .line 18869
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    return-void
.end method

.method static synthetic access$32200()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1

    .line 18861
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object v0
.end method

.method static synthetic access$32300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;D)V
    .locals 0

    .line 18861
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->setRoll(D)V

    return-void
.end method

.method static synthetic access$32400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V
    .locals 0

    .line 18861
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->clearRoll()V

    return-void
.end method

.method static synthetic access$32500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;D)V
    .locals 0

    .line 18861
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->setPitch(D)V

    return-void
.end method

.method static synthetic access$32600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V
    .locals 0

    .line 18861
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->clearPitch()V

    return-void
.end method

.method static synthetic access$32700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;D)V
    .locals 0

    .line 18861
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->setYaw(D)V

    return-void
.end method

.method static synthetic access$32800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V
    .locals 0

    .line 18861
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->clearYaw()V

    return-void
.end method

.method private clearPitch()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18938
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    return-void
.end method

.method private clearRoll()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18903
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    return-void
.end method

.method private clearYaw()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18973
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1

    .line 19303
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19072
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;
    .locals 1

    .line 19075
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19049
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19055
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19013
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19020
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19060
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19067
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19037
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19044
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19025
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19032
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;",
            ">;"
        }
    .end annotation

    .line 19309
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPitch(D)V
    .locals 0

    .line 18927
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    return-void
.end method

.method private setRoll(D)V
    .locals 0

    .line 18892
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    return-void
.end method

.method private setYaw(D)V
    .locals 0

    .line 18962
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 19206
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 19291
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 19282
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    monitor-enter p1

    .line 19283
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 19284
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 19286
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 19288
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 19234
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 19236
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 19241
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x9

    if-eq p1, p3, :cond_5

    const/16 p3, 0x11

    if-eq p1, p3, :cond_4

    const/16 p3, 0x19

    if-eq p1, p3, :cond_3

    .line 19247
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 19264
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    goto :goto_1

    .line 19259
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    goto :goto_1

    .line 19254
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D
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

    .line 19272
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 19274
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 19270
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19275
    :goto_3
    throw p1

    .line 19279
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p1

    .line 19220
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 19221
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    .line 19222
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    const-wide/16 p1, 0x0

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_9

    move v7, v2

    goto :goto_5

    :cond_9
    move v7, v1

    :goto_5
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    .line 19224
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_6
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_b

    move v7, v2

    goto :goto_7

    :cond_b
    move v7, v1

    :goto_7
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    .line 19226
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    cmpl-double v5, v3, p1

    if-eqz v5, :cond_c

    move v5, v2

    goto :goto_8

    :cond_c
    move v5, v1

    :goto_8
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    cmpl-double p1, v6, p1

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_9

    :cond_d
    move p1, v1

    :goto_9
    move v1, v5

    move-wide v2, v3

    move v4, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    .line 19228
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 19217
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 19211
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-object p1

    .line 19208
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;-><init>()V

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

.method public getPitch()D
    .locals 2

    .line 18916
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    return-wide v0
.end method

.method public getRoll()D
    .locals 2

    .line 18881
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 18990
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 18994
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 18996
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 18998
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 19000
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 19002
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 19004
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 19006
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->memoizedSerializedSize:I

    return v0
.end method

.method public getYaw()D
    .locals 2

    .line 18951
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    return-wide v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18978
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->roll_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 18979
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18981
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->pitch_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 18982
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 18984
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->yaw_:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 18985
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    :cond_2
    return-void
.end method
