.class public final Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "GuideTrafficLightProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/GuideTrafficLightProto$PositionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/GuideTrafficLightProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$PositionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

.field public static final LAT_FIELD_NUMBER:I = 0x2

.field public static final LON_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alt_:D

.field private lat_:D

.field private lon_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 618
    new-instance v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-direct {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    .line 619
    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 262
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 263
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    .line 264
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    .line 265
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1

    .line 257
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;D)V
    .locals 0

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->setLon(D)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->clearLon()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;D)V
    .locals 0

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->setLat(D)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->clearLat()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;D)V
    .locals 0

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->setAlt(D)V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V
    .locals 0

    .line 257
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->clearAlt()V

    return-void
.end method

.method private clearAlt()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 333
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    return-void
.end method

.method private clearLat()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 310
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    return-void
.end method

.method private clearLon()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 287
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1

    .line 623
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 432
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;
    .locals 1

    .line 435
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 373
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 385
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 392
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;",
            ">;"
        }
    .end annotation

    .line 629
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlt(D)V
    .locals 0

    .line 326
    iput-wide p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    return-void
.end method

.method private setLat(D)V
    .locals 0

    .line 303
    iput-wide p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    return-void
.end method

.method private setLon(D)V
    .locals 0

    .line 280
    iput-wide p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 526
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 611
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 602
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    monitor-enter p1

    .line 603
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 604
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 606
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 608
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 554
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 556
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 561
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

    .line 567
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 584
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    goto :goto_1

    .line 579
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    goto :goto_1

    .line 574
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D
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

    .line 592
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 594
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 590
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 595
    :goto_3
    throw p1

    .line 599
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p1

    .line 540
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 541
    check-cast p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    .line 542
    iget-wide v5, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    const-wide/16 p1, 0x0

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    .line 544
    iget-wide v5, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_6

    :cond_a
    move v4, v1

    :goto_6
    iget-wide v8, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    .line 546
    iget-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    cmpl-double v5, v3, p1

    if-eqz v5, :cond_c

    move v5, v2

    goto :goto_8

    :cond_c
    move v5, v1

    :goto_8
    iget-wide v6, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

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

    iput-wide p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    .line 548
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 537
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;-><init>(Landroid/car/hardware/xpu/GuideTrafficLightProto$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 531
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-object p1

    .line 528
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-direct {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;-><init>()V

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

.method public getAlt()D
    .locals 2

    .line 319
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    .line 296
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 273
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 350
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 354
    iget-wide v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 356
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 360
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 364
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lon_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 339
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 341
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->lat_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 342
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 344
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->alt_:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 345
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    :cond_2
    return-void
.end method
