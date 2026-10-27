.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocParallelRoad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

.field public static final FORMWAY_FIELD_NUMBER:I = 0x3

.field public static final LINK_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROAD_ID_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private formway_:I

.field private linkType_:I

.field private roadId_:J

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 580
    new-instance v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-direct {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    .line 581
    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    .line 66
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    .line 67
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1

    .line 58
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;J)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->setRoadId(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->clearRoadId()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->setType(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->clearType()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->setFormway(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->clearFormway()V

    return-void
.end method

.method static synthetic access$700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->setLinkType(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->clearLinkType()V

    return-void
.end method

.method private clearFormway()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    return-void
.end method

.method private clearLinkType()V
    .locals 1

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    return-void
.end method

.method private clearRoadId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1

    .line 585
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 312
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;
    .locals 1

    .line 315
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 253
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 260
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 272
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;"
        }
    .end annotation

    .line 591
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFormway(I)V
    .locals 0

    .line 160
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    return-void
.end method

.method private setLinkType(I)V
    .locals 0

    .line 195
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    return-void
.end method

.method private setRoadId(J)V
    .locals 0

    .line 90
    iput-wide p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 125
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 481
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 573
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 564
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    monitor-enter p1

    .line 565
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 566
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 568
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 570
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 511
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 513
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 518
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

    .line 524
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 546
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    goto :goto_1

    .line 541
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    goto :goto_1

    .line 536
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    goto :goto_1

    .line 531
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J
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

    .line 554
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 556
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 552
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 557
    :goto_3
    throw p1

    .line 561
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p1

    .line 495
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 496
    check-cast p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    .line 497
    iget-wide v5, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_9

    move p1, v2

    goto :goto_4

    :cond_9
    move p1, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_a

    move v7, v2

    goto :goto_5

    :cond_a
    move v7, v1

    :goto_5
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    .line 499
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_7

    :cond_c
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    .line 501
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_8

    :cond_d
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_9

    :cond_e
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    .line 503
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_a

    :cond_f
    move v0, v1

    :goto_a
    iget p3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    if-eqz p3, :cond_10

    move v1, v2

    :cond_10
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    .line 505
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 492
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;-><init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 486
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p1

    .line 483
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-direct {p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;-><init>()V

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

.method public getFormway()I
    .locals 1

    .line 149
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    return v0
.end method

.method public getRoadId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 226
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 230
    iget-wide v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 232
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 236
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 240
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 244
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->memoizedSerializedSize:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 114
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->roadId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 212
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 214
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->type_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 215
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 217
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->formway_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 218
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 220
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->linkType_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 221
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    return-void
.end method
