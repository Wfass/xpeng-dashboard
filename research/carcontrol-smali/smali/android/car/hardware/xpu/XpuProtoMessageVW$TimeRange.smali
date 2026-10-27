.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

.field public static final END_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_FIELD_NUMBER:I = 0x1


# instance fields
.field private end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

.field private start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6906
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    .line 6907
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6497
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$12200()Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1

    .line 6492
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object v0
.end method

.method static synthetic access$12300(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 6492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->setStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V
    .locals 0

    .line 6492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->setStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 6492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->mergeStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)V
    .locals 0

    .line 6492
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->clearStart()V

    return-void
.end method

.method static synthetic access$12700(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 6492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->setEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V
    .locals 0

    .line 6492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->setEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V

    return-void
.end method

.method static synthetic access$12900(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 6492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->mergeEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V

    return-void
.end method

.method static synthetic access$13000(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)V
    .locals 0

    .line 6492
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->clearEnd()V

    return-void
.end method

.method private clearEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 6599
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-void
.end method

.method private clearStart()V
    .locals 1

    const/4 v0, 0x0

    .line 6547
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1

    .line 6911
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object v0
.end method

.method private mergeEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 2

    .line 6587
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v0, :cond_0

    .line 6588
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6589
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    .line 6590
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    goto :goto_0

    .line 6592
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    :goto_0
    return-void
.end method

.method private mergeStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 2

    .line 6535
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v0, :cond_0

    .line 6536
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6537
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    .line 6538
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    goto :goto_0

    .line 6540
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6692
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;
    .locals 1

    .line 6695
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6669
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6675
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6633
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6640
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6680
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6687
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6657
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6664
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6645
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6652
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;",
            ">;"
        }
    .end annotation

    .line 6917
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V
    .locals 0

    .line 6580
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-void
.end method

.method private setEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 6570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6572
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-void
.end method

.method private setStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;)V
    .locals 0

    .line 6528
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-void
.end method

.method private setStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 6518
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6520
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 6807
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6899
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6890
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    monitor-enter p1

    .line 6891
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6892
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6894
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6896
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6831
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6833
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_8

    .line 6838
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    .line 6844
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    .line 6864
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v1, :cond_4

    .line 6865
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 6867
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v1, :cond_2

    .line 6869
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 6870
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    goto :goto_1

    .line 6851
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v1, :cond_6

    .line 6852
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    goto :goto_3

    :cond_6
    move-object v1, v0

    .line 6854
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v1, :cond_2

    .line 6856
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 6857
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_4
    move p1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 6880
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6882
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6878
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6883
    :goto_5
    throw p1

    .line 6887
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p1

    .line 6821
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 6822
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    .line 6823
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    .line 6824
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    .line 6825
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 6818
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 6812
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    return-object p1

    .line 6809
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;-><init>()V

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

.method public getEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1

    .line 6563
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6614
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6618
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 6620
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->getStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6622
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 6624
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->getEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6626
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->memoizedSerializedSize:I

    return v0
.end method

.method public getStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1

    .line 6511
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 6557
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 6505
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6606
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->getStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6608
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 6609
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeRange;->getEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_1
    return-void
.end method
