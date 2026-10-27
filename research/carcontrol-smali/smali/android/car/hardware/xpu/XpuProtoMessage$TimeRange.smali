.class public final Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$TimeRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

.field public static final END_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_FIELD_NUMBER:I = 0x1


# instance fields
.field private end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

.field private start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7167
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    .line 7168
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6758
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$12400()Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1

    .line 6753
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object v0
.end method

.method static synthetic access$12500(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6753
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->setStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V
    .locals 0

    .line 6753
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->setStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6753
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->mergeStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 0

    .line 6753
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->clearStart()V

    return-void
.end method

.method static synthetic access$12900(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6753
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->setEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-void
.end method

.method static synthetic access$13000(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V
    .locals 0

    .line 6753
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->setEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V

    return-void
.end method

.method static synthetic access$13100(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6753
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->mergeEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 0

    .line 6753
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->clearEnd()V

    return-void
.end method

.method private clearEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 6860
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-void
.end method

.method private clearStart()V
    .locals 1

    const/4 v0, 0x0

    .line 6808
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1

    .line 7172
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object v0
.end method

.method private mergeEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 2

    .line 6848
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v0, :cond_0

    .line 6849
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6850
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    .line 6851
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    goto :goto_0

    .line 6853
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    :goto_0
    return-void
.end method

.method private mergeStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 2

    .line 6796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v0, :cond_0

    .line 6797
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6798
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    .line 6799
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    goto :goto_0

    .line 6801
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 6953
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;
    .locals 1

    .line 6956
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6930
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6936
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6894
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6901
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6941
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6948
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6918
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6925
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6906
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6913
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
            ">;"
        }
    .end annotation

    .line 7178
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V
    .locals 0

    .line 6841
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-void
.end method

.method private setEnd(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6831
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6833
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-void
.end method

.method private setStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;)V
    .locals 0

    .line 6789
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-void
.end method

.method private setStart(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6779
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6781
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 7068
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7160
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 7151
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    monitor-enter p1

    .line 7152
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 7153
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 7155
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 7157
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 7092
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 7094
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_8

    .line 7099
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    .line 7105
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    .line 7125
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v1, :cond_4

    .line 7126
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 7128
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v1, :cond_2

    .line 7130
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 7131
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    goto :goto_1

    .line 7112
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v1, :cond_6

    .line 7113
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    goto :goto_3

    :cond_6
    move-object v1, v0

    .line 7115
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v1, :cond_2

    .line 7117
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 7118
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;
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

    .line 7141
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 7143
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 7139
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7144
    :goto_5
    throw p1

    .line 7148
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p1

    .line 7082
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 7083
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    .line 7084
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    .line 7085
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    .line 7086
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 7079
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 7073
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p1

    .line 7070
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;-><init>()V

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

.method public getEnd()Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1

    .line 6824
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6875
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6879
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 6881
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->getStart()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6883
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 6885
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->getEnd()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6887
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->memoizedSerializedSize:I

    return v0
.end method

.method public getStart()Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1

    .line 6772
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 6818
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

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

    .line 6766
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

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

    .line 6866
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->start_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6867
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->getStart()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6869
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->end_:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 6870
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->getEnd()Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_1
    return-void
.end method
