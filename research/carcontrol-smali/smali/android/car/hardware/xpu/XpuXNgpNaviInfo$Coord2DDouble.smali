.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDoubleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coord2DDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDoubleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;",
            ">;"
        }
    .end annotation
.end field

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2


# instance fields
.field private x_:D

.field private y_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6189
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    .line 6190
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5894
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 5895
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    .line 5896
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    return-void
.end method

.method static synthetic access$7200()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1

    .line 5889
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;D)V
    .locals 0

    .line 5889
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->setX(D)V

    return-void
.end method

.method static synthetic access$7400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 5889
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->clearX()V

    return-void
.end method

.method static synthetic access$7500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;D)V
    .locals 0

    .line 5889
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->setY(D)V

    return-void
.end method

.method static synthetic access$7600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 5889
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->clearY()V

    return-void
.end method

.method private clearX()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5918
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    return-void
.end method

.method private clearY()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5941
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1

    .line 6194
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
    .locals 1

    .line 6033
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;
    .locals 1

    .line 6036
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6010
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6016
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5974
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5981
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6021
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6028
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5998
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6005
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5986
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5993
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;",
            ">;"
        }
    .end annotation

    .line 6200
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setX(D)V
    .locals 0

    .line 5911
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    return-void
.end method

.method private setY(D)V
    .locals 0

    .line 5934
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 6104
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 6182
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6173
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    monitor-enter p1

    .line 6174
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6175
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6177
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6179
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6130
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6132
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 6137
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x9

    if-eq p1, p3, :cond_4

    const/16 p3, 0x11

    if-eq p1, p3, :cond_3

    .line 6143
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 6155
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    goto :goto_1

    .line 6150
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D
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

    .line 6163
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6165
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6161
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6166
    :goto_3
    throw p1

    .line 6170
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p1

    .line 6118
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 6119
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    .line 6120
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    const-wide/16 p1, 0x0

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_7

    move v4, v2

    goto :goto_4

    :cond_7
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_8

    move v7, v2

    goto :goto_5

    :cond_8
    move v7, v1

    :goto_5
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    .line 6122
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    cmpl-double v5, v3, p1

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_6

    :cond_9
    move v5, v1

    :goto_6
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    cmpl-double p1, v6, p1

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_7

    :cond_a
    move p1, v1

    :goto_7
    move v1, v5

    move-wide v2, v3

    move v4, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    .line 6124
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 6115
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 6109
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-object p1

    .line 6106
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;-><init>()V

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

.method public getSerializedSize()I
    .locals 6

    .line 5955
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5959
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 5961
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5963
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 5965
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 5967
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->memoizedSerializedSize:I

    return v0
.end method

.method public getX()D
    .locals 2

    .line 5904
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 5927
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    return-wide v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5946
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->x_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 5947
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 5949
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->y_:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 5950
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    :cond_1
    return-void
.end method
