.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalMapInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

.field public static final END_OFFSET_FIELD_NUMBER:I = 0x3

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field public static final INTERNAL_ROUTE_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_OFFSET_FIELD_NUMBER:I = 0x2


# instance fields
.field private endOffset_:J

.field private header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

.field private internalRouteType_:I

.field private startOffset_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17928
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    .line 17929
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 17284
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 17285
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    .line 17286
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    const/4 v0, 0x0

    .line 17287
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    return-void
.end method

.method static synthetic access$29300()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1

    .line 17279
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object v0
.end method

.method static synthetic access$29400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 17279
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-void
.end method

.method static synthetic access$29500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V
    .locals 0

    .line 17279
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V

    return-void
.end method

.method static synthetic access$29600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 17279
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->mergeHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-void
.end method

.method static synthetic access$29700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 0

    .line 17279
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->clearHeader()V

    return-void
.end method

.method static synthetic access$29800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;J)V
    .locals 0

    .line 17279
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->setStartOffset(J)V

    return-void
.end method

.method static synthetic access$29900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 0

    .line 17279
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->clearStartOffset()V

    return-void
.end method

.method static synthetic access$30000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;J)V
    .locals 0

    .line 17279
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->setEndOffset(J)V

    return-void
.end method

.method static synthetic access$30100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 0

    .line 17279
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->clearEndOffset()V

    return-void
.end method

.method static synthetic access$30200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;I)V
    .locals 0

    .line 17279
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->setInternalRouteTypeValue(I)V

    return-void
.end method

.method static synthetic access$30300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V
    .locals 0

    .line 17279
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->setInternalRouteType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V

    return-void
.end method

.method static synthetic access$30400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 0

    .line 17279
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->clearInternalRouteType()V

    return-void
.end method

.method private clearEndOffset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17432
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    return-void
.end method

.method private clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 17361
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-void
.end method

.method private clearInternalRouteType()V
    .locals 1

    const/4 v0, 0x0

    .line 17491
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    return-void
.end method

.method private clearStartOffset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17397
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1

    .line 17933
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object v0
.end method

.method private mergeHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 2

    .line 17345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v0, :cond_0

    .line 17346
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 17347
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    .line 17348
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    goto :goto_0

    .line 17350
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17597
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;
    .locals 1

    .line 17600
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17574
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17580
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17538
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17545
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17585
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17592
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17562
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17569
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17550
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17557
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;"
        }
    .end annotation

    .line 17939
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEndOffset(J)V
    .locals 0

    .line 17421
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    return-void
.end method

.method private setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V
    .locals 0

    .line 17334
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-void
.end method

.method private setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 17320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17322
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-void
.end method

.method private setInternalRouteType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V
    .locals 0

    .line 17477
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17480
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    return-void
.end method

.method private setInternalRouteTypeValue(I)V
    .locals 0

    .line 17466
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    return-void
.end method

.method private setStartOffset(J)V
    .locals 0

    .line 17386
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 17822
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 17921
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 17912
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    monitor-enter p1

    .line 17913
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 17914
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 17916
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 17918
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 17850
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 17852
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 17857
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

    .line 17863
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 17892
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 17894
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    goto :goto_1

    .line 17888
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    goto :goto_1

    .line 17883
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    goto :goto_1

    .line 17870
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz p1, :cond_7

    .line 17871
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    goto :goto_2

    :cond_7
    move-object p1, v0

    .line 17873
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz p1, :cond_2

    .line 17875
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 17876
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
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

    .line 17902
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 17904
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 17900
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17905
    :goto_4
    throw p1

    .line 17909
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p1

    .line 17836
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 17837
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    .line 17838
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    .line 17839
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_b

    move v7, v2

    goto :goto_6

    :cond_b
    move v7, v1

    :goto_6
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    .line 17841
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_c

    move v4, v2

    goto :goto_7

    :cond_c
    move v4, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_d

    move v7, v2

    goto :goto_8

    :cond_d
    move v7, v1

    :goto_8
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    .line 17843
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_9

    :cond_e
    move v0, v1

    :goto_9
    iget p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    if-eqz p3, :cond_f

    move v1, v2

    :cond_f
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    .line 17844
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 17833
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 17827
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p1

    .line 17824
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;-><init>()V

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

.method public getEndOffset()J
    .locals 2

    .line 17410
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    return-wide v0
.end method

.method public getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1

    .line 17309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInternalRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;
    .locals 1

    .line 17455
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17456
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    :cond_0
    return-object v0
.end method

.method public getInternalRouteTypeValue()I
    .locals 1

    .line 17445
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 17511
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 17515
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 17517
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17519
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 17521
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17523
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 17525
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17527
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->FNGP_INTERNAL_ROUTE_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x4

    .line 17528
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    .line 17529
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17531
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getStartOffset()J
    .locals 2

    .line 17375
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    return-wide v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 17299
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17496
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 17497
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 17499
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->startOffset_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 17500
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17502
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->endOffset_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 17503
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17505
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->FNGP_INTERNAL_ROUTE_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    .line 17506
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->internalRouteType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_3
    return-void
.end method
