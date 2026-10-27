.class public final Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlopeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

.field public static final HEIGHT_DIFF_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOPE_ANGLE_FIELD_NUMBER:I = 0x3

.field public static final SLOPE_LENGTH_FIELD_NUMBER:I = 0x4

.field public static final SLOPE_POINT_FIELD_NUMBER:I = 0x1


# instance fields
.field private heightDiff_:I

.field private slopeAngle_:I

.field private slopeLength_:J

.field private slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8740
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    .line 8741
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 8266
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 8267
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    .line 8268
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    const-wide/16 v0, 0x0

    .line 8269
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    return-void
.end method

.method static synthetic access$15900()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1

    .line 8261
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object v0
.end method

.method static synthetic access$16000(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 8261
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$16100(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 8261
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$16200(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 8261
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->mergeSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 0

    .line 8261
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->clearSlopePoint()V

    return-void
.end method

.method static synthetic access$16400(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;I)V
    .locals 0

    .line 8261
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->setHeightDiff(I)V

    return-void
.end method

.method static synthetic access$16500(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 0

    .line 8261
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->clearHeightDiff()V

    return-void
.end method

.method static synthetic access$16600(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;I)V
    .locals 0

    .line 8261
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->setSlopeAngle(I)V

    return-void
.end method

.method static synthetic access$16700(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 0

    .line 8261
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->clearSlopeAngle()V

    return-void
.end method

.method static synthetic access$16800(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;J)V
    .locals 0

    .line 8261
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->setSlopeLength(J)V

    return-void
.end method

.method static synthetic access$16900(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 0

    .line 8261
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->clearSlopeLength()V

    return-void
.end method

.method private clearHeightDiff()V
    .locals 1

    const/4 v0, 0x0

    .line 8343
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    return-void
.end method

.method private clearSlopeAngle()V
    .locals 1

    const/4 v0, 0x0

    .line 8366
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    return-void
.end method

.method private clearSlopeLength()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8389
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    return-void
.end method

.method private clearSlopePoint()V
    .locals 1

    const/4 v0, 0x0

    .line 8319
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1

    .line 8745
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object v0
.end method

.method private mergeSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 8307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 8308
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 8310
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 8312
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8495
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;
    .locals 1

    .line 8498
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8472
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8478
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8436
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8443
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8483
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8490
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8460
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8467
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8448
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8455
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
            ">;"
        }
    .end annotation

    .line 8751
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeightDiff(I)V
    .locals 0

    .line 8336
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    return-void
.end method

.method private setSlopeAngle(I)V
    .locals 0

    .line 8359
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    return-void
.end method

.method private setSlopeLength(J)V
    .locals 0

    .line 8382
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    return-void
.end method

.method private setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 8300
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 8290
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8292
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 8634
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 8733
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 8724
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    monitor-enter p1

    .line 8725
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 8726
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 8728
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 8730
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 8663
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 8665
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 8670
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6

    const/16 v3, 0x10

    if-eq p1, v3, :cond_5

    const/16 v3, 0x18

    if-eq p1, v3, :cond_4

    const/16 v3, 0x20

    if-eq p1, v3, :cond_3

    .line 8676
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 8706
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    goto :goto_1

    .line 8701
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    goto :goto_1

    .line 8696
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    goto :goto_1

    .line 8683
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_7

    .line 8684
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_2

    :cond_7
    move-object p1, v0

    .line 8686
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 8688
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 8689
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 8714
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 8716
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8712
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8717
    :goto_4
    throw p1

    .line 8721
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p1

    .line 8648
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 8649
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    .line 8650
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 8651
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    if-eqz p1, :cond_a

    move p2, v2

    goto :goto_5

    :cond_a
    move p2, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    move v4, v1

    :goto_6
    invoke-interface {v0, p2, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    .line 8653
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    if-eqz p1, :cond_c

    move p2, v2

    goto :goto_7

    :cond_c
    move p2, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_8

    :cond_d
    move v4, v1

    :goto_8
    invoke-interface {v0, p2, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    .line 8655
    iget-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_9

    :cond_e
    move v5, v1

    :goto_9
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    cmp-long p3, v6, v3

    if-eqz p3, :cond_f

    move v4, v2

    goto :goto_a

    :cond_f
    move v4, v1

    :goto_a
    move v1, v5

    move-wide v2, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    .line 8657
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 8645
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 8639
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p1

    .line 8636
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;-><init>()V

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

.method public getHeightDiff()I
    .locals 1

    .line 8329
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 8409
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8413
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 8415
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8417
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 8419
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8421
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 8423
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8425
    :cond_3
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 8427
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8429
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlopeAngle()I
    .locals 1

    .line 8352
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    return v0
.end method

.method public getSlopeLength()J
    .locals 2

    .line 8375
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    return-wide v0
.end method

.method public getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 8283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasSlopePoint()Z
    .locals 1

    .line 8277
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8394
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8395
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 8397
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->heightDiff_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 8398
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8400
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeAngle_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 8401
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8403
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->slopeLength_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 8404
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    return-void
.end method
