.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlopeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

.field public static final HEIGHT_DIFF_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
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

.field private slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8479
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    .line 8480
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 8005
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 8006
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    .line 8007
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    const-wide/16 v0, 0x0

    .line 8008
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    return-void
.end method

.method static synthetic access$15700()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1

    .line 8000
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object v0
.end method

.method static synthetic access$15800(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 8000
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$15900(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 8000
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$16000(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 8000
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->mergeSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$16100(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 0

    .line 8000
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->clearSlopePoint()V

    return-void
.end method

.method static synthetic access$16200(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;I)V
    .locals 0

    .line 8000
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->setHeightDiff(I)V

    return-void
.end method

.method static synthetic access$16300(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 0

    .line 8000
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->clearHeightDiff()V

    return-void
.end method

.method static synthetic access$16400(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;I)V
    .locals 0

    .line 8000
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->setSlopeAngle(I)V

    return-void
.end method

.method static synthetic access$16500(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 0

    .line 8000
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->clearSlopeAngle()V

    return-void
.end method

.method static synthetic access$16600(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;J)V
    .locals 0

    .line 8000
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->setSlopeLength(J)V

    return-void
.end method

.method static synthetic access$16700(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 0

    .line 8000
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->clearSlopeLength()V

    return-void
.end method

.method private clearHeightDiff()V
    .locals 1

    const/4 v0, 0x0

    .line 8082
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    return-void
.end method

.method private clearSlopeAngle()V
    .locals 1

    const/4 v0, 0x0

    .line 8105
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    return-void
.end method

.method private clearSlopeLength()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8128
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    return-void
.end method

.method private clearSlopePoint()V
    .locals 1

    const/4 v0, 0x0

    .line 8058
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1

    .line 8484
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object v0
.end method

.method private mergeSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 2

    .line 8046
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    .line 8047
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8048
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 8049
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_0

    .line 8051
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8234
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;
    .locals 1

    .line 8237
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8211
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8217
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8175
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8182
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8222
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8229
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8199
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8206
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8187
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8194
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
            ">;"
        }
    .end annotation

    .line 8490
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeightDiff(I)V
    .locals 0

    .line 8075
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    return-void
.end method

.method private setSlopeAngle(I)V
    .locals 0

    .line 8098
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    return-void
.end method

.method private setSlopeLength(J)V
    .locals 0

    .line 8121
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    return-void
.end method

.method private setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 8039
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setSlopePoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 8029
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8031
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 8373
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 8472
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 8463
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    monitor-enter p1

    .line 8464
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 8465
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 8467
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 8469
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 8402
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 8404
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 8409
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

    .line 8415
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 8445
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    goto :goto_1

    .line 8440
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    goto :goto_1

    .line 8435
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    goto :goto_1

    .line 8422
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_7

    .line 8423
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    goto :goto_2

    :cond_7
    move-object p1, v0

    .line 8425
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_2

    .line 8427
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 8428
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
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

    .line 8453
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 8455
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8451
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8456
    :goto_4
    throw p1

    .line 8460
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p1

    .line 8387
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 8388
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    .line 8389
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iget-object p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 8390
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    if-eqz p1, :cond_a

    move p2, v2

    goto :goto_5

    :cond_a
    move p2, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    move v4, v1

    :goto_6
    invoke-interface {v0, p2, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    .line 8392
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    if-eqz p1, :cond_c

    move p2, v2

    goto :goto_7

    :cond_c
    move p2, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_8

    :cond_d
    move v4, v1

    :goto_8
    invoke-interface {v0, p2, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    .line 8394
    iget-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_9

    :cond_e
    move v5, v1

    :goto_9
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

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

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    .line 8396
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 8384
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 8378
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p1

    .line 8375
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;-><init>()V

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

    .line 8068
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 8148
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8152
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 8154
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8156
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 8158
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8160
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 8162
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8164
    :cond_3
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 8166
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8168
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlopeAngle()I
    .locals 1

    .line 8091
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    return v0
.end method

.method public getSlopeLength()J
    .locals 2

    .line 8114
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    return-wide v0
.end method

.method public getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 8022
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasSlopePoint()Z
    .locals 1

    .line 8016
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

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

    .line 8133
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopePoint_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8134
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->getSlopePoint()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 8136
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->heightDiff_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 8137
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8139
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeAngle_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 8140
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8142
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->slopeLength_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 8143
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    return-void
.end method
