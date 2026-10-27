.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3fOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Size3f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3fOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

.field public static final HEIGH_FIELD_NUMBER:I = 0x3

.field public static final LENGTH_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH_FIELD_NUMBER:I = 0x2


# instance fields
.field private heigh_:F

.field private length_:F

.field private width_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1351
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    .line 1352
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 995
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 996
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    .line 997
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    .line 998
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    return-void
.end method

.method static synthetic access$1600()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1

    .line 990
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;F)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->setLength(F)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 990
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->clearLength()V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;F)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->setWidth(F)V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 990
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->clearWidth()V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;F)V
    .locals 0

    .line 990
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->setHeigh(F)V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 990
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->clearHeigh()V

    return-void
.end method

.method private clearHeigh()V
    .locals 1

    const/4 v0, 0x0

    .line 1066
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    return-void
.end method

.method private clearLength()V
    .locals 1

    const/4 v0, 0x0

    .line 1020
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    return-void
.end method

.method private clearWidth()V
    .locals 1

    const/4 v0, 0x0

    .line 1043
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1

    .line 1356
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1165
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;
    .locals 1

    .line 1168
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1106
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1113
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1160
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1130
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1137
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1118
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1125
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;",
            ">;"
        }
    .end annotation

    .line 1362
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeigh(F)V
    .locals 0

    .line 1059
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    return-void
.end method

.method private setLength(F)V
    .locals 0

    .line 1013
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    return-void
.end method

.method private setWidth(F)V
    .locals 0

    .line 1036
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1259
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1344
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1335
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    monitor-enter p1

    .line 1336
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1337
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1339
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1341
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1287
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1289
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 1294
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

    .line 1300
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1317
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    goto :goto_1

    .line 1312
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    goto :goto_1

    .line 1307
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F
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

    .line 1325
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1327
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1323
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1328
    :goto_3
    throw p1

    .line 1332
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p1

    .line 1273
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1274
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    .line 1275
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v1

    :goto_5
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    .line 1277
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_7

    :cond_b
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    .line 1279
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_8

    :cond_c
    move v3, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    .line 1281
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1270
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1264
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-object p1

    .line 1261
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;-><init>()V

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

.method public getHeigh()F
    .locals 1

    .line 1052
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    return v0
.end method

.method public getLength()F
    .locals 1

    .line 1006
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1083
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1087
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1089
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 1093
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 1097
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->memoizedSerializedSize:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 1029
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->length_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1072
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1074
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->width_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 1075
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1077
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->heigh_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 1078
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_2
    return-void
.end method
