.class public final Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$SlopePointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlopePoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePointOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANGLE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x5

.field public static final LAT_FIELD_NUMBER:I = 0x2

.field public static final LENGTH_FIELD_NUMBER:I = 0x4

.field public static final LON_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private angle_:I

.field private height_:I

.field private lat_:I

.field private length_:I

.field private lon_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7697
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    .line 7698
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7219
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7220
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    .line 7221
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    .line 7222
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    .line 7223
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    .line 7224
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    return-void
.end method

.method static synthetic access$13400()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1

    .line 7214
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object v0
.end method

.method static synthetic access$13500(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V
    .locals 0

    .line 7214
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->setLon(I)V

    return-void
.end method

.method static synthetic access$13600(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7214
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->clearLon()V

    return-void
.end method

.method static synthetic access$13700(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V
    .locals 0

    .line 7214
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->setLat(I)V

    return-void
.end method

.method static synthetic access$13800(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7214
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->clearLat()V

    return-void
.end method

.method static synthetic access$13900(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V
    .locals 0

    .line 7214
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->setAngle(I)V

    return-void
.end method

.method static synthetic access$14000(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7214
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->clearAngle()V

    return-void
.end method

.method static synthetic access$14100(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V
    .locals 0

    .line 7214
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->setLength(I)V

    return-void
.end method

.method static synthetic access$14200(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7214
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->clearLength()V

    return-void
.end method

.method static synthetic access$14300(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;I)V
    .locals 0

    .line 7214
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->setHeight(I)V

    return-void
.end method

.method static synthetic access$14400(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7214
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->clearHeight()V

    return-void
.end method

.method private clearAngle()V
    .locals 1

    const/4 v0, 0x0

    .line 7292
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    return-void
.end method

.method private clearHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 7338
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    return-void
.end method

.method private clearLat()V
    .locals 1

    const/4 v0, 0x0

    .line 7269
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    return-void
.end method

.method private clearLength()V
    .locals 1

    const/4 v0, 0x0

    .line 7315
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    return-void
.end method

.method private clearLon()V
    .locals 1

    const/4 v0, 0x0

    .line 7246
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1

    .line 7702
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7451
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;
    .locals 1

    .line 7454
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7428
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7434
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7392
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7399
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7439
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7446
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7416
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7423
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7404
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7411
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;"
        }
    .end annotation

    .line 7708
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAngle(I)V
    .locals 0

    .line 7285
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    return-void
.end method

.method private setHeight(I)V
    .locals 0

    .line 7331
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    return-void
.end method

.method private setLat(I)V
    .locals 0

    .line 7262
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    return-void
.end method

.method private setLength(I)V
    .locals 0

    .line 7308
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    return-void
.end method

.method private setLon(I)V
    .locals 0

    .line 7239
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 7591
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 7690
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 7681
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    monitor-enter p1

    .line 7682
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 7683
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 7685
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 7687
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 7623
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 7625
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 7630
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_7

    const/16 p3, 0x10

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_5

    const/16 p3, 0x20

    if-eq p1, p3, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    .line 7636
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 7663
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    goto :goto_1

    .line 7658
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    goto :goto_1

    .line 7653
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    goto :goto_1

    .line 7648
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    goto :goto_1

    .line 7643
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 7671
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 7673
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 7669
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7674
    :goto_3
    throw p1

    .line 7678
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p1

    .line 7605
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 7606
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    .line 7607
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_5

    :cond_b
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    .line 7609
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_7

    :cond_d
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    .line 7611
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_8

    :cond_e
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_9

    :cond_f
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    .line 7613
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_a

    :cond_10
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_b

    :cond_11
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    .line 7615
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_c

    :cond_12
    move v0, v1

    :goto_c
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    if-eqz p3, :cond_13

    move v1, v2

    :cond_13
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    .line 7617
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 7602
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 7596
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p1

    .line 7593
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;-><init>()V

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

.method public getAngle()I
    .locals 1

    .line 7278
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 7324
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    return v0
.end method

.method public getLat()I
    .locals 1

    .line 7255
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 7301
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    return v0
.end method

.method public getLon()I
    .locals 1

    .line 7232
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 7361
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 7365
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 7367
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7369
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 7371
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7373
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 7375
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7377
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 7379
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7381
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 7383
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7385
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7343
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lon_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7344
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7346
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->lat_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7347
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7349
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->angle_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7350
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7352
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->length_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 7353
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7355
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->height_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 7356
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    return-void
.end method
