.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2_Point"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

.field public static final LAT_FIELD_NUMBER:I = 0x1

.field public static final LON_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lat_:F

.field private lon_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4381
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 4382
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4086
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 4087
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    .line 4088
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    return-void
.end method

.method static synthetic access$6500()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 4081
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;F)V
    .locals 0

    .line 4081
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->setLat(F)V

    return-void
.end method

.method static synthetic access$6700(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 4081
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->clearLat()V

    return-void
.end method

.method static synthetic access$6800(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;F)V
    .locals 0

    .line 4081
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->setLon(F)V

    return-void
.end method

.method static synthetic access$6900(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 4081
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->clearLon()V

    return-void
.end method

.method private clearLat()V
    .locals 1

    const/4 v0, 0x0

    .line 4110
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    return-void
.end method

.method private clearLon()V
    .locals 1

    const/4 v0, 0x0

    .line 4133
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 4386
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
    .locals 1

    .line 4225
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;
    .locals 1

    .line 4228
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4202
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4208
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4166
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4173
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4213
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4220
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4190
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4197
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4178
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4185
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 4392
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLat(F)V
    .locals 0

    .line 4103
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    return-void
.end method

.method private setLon(F)V
    .locals 0

    .line 4126
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 4296
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4374
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4365
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    monitor-enter p1

    .line 4366
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4367
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 4369
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4371
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 4322
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 4324
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 4329
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0xd

    if-eq p1, p3, :cond_4

    const/16 p3, 0x15

    if-eq p1, p3, :cond_3

    .line 4335
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 4347
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    goto :goto_1

    .line 4342
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F
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

    .line 4355
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 4357
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4353
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4358
    :goto_3
    throw p1

    .line 4362
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p1

    .line 4310
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 4311
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 4312
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v1

    :goto_5
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    .line 4314
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v1

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    .line 4316
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 4307
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 4301
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p1

    .line 4298
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;-><init>()V

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

.method public getLat()F
    .locals 1

    .line 4096
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 4119
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 4147
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4151
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 4153
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4155
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 4157
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4159
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4138
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lat_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4139
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 4141
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->lon_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 4142
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_1
    return-void
.end method
