.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FNgpRecordingState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingStateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTO_SAVE_TYPE_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORDING_STATUS_FIELD_NUMBER:I = 0x2

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3


# instance fields
.field private autoSaveType_:I

.field private name_:Ljava/lang/String;

.field private recordingStatus_:I

.field private routeId_:J

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16711
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    .line 16712
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 16006
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 16007
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    const/4 v2, 0x0

    .line 16008
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    .line 16009
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    const-string v0, ""

    .line 16010
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    .line 16011
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    return-void
.end method

.method static synthetic access$27100()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1

    .line 16001
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object v0
.end method

.method static synthetic access$27200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;J)V
    .locals 0

    .line 16001
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$27300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V
    .locals 0

    .line 16001
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->clearRouteId()V

    return-void
.end method

.method static synthetic access$27400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;I)V
    .locals 0

    .line 16001
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->setRecordingStatus(I)V

    return-void
.end method

.method static synthetic access$27500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V
    .locals 0

    .line 16001
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->clearRecordingStatus()V

    return-void
.end method

.method static synthetic access$27600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;J)V
    .locals 0

    .line 16001
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$27700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V
    .locals 0

    .line 16001
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$27800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;Ljava/lang/String;)V
    .locals 0

    .line 16001
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V
    .locals 0

    .line 16001
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->clearName()V

    return-void
.end method

.method static synthetic access$28000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 16001
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;I)V
    .locals 0

    .line 16001
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->setAutoSaveTypeValue(I)V

    return-void
.end method

.method static synthetic access$28200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;)V
    .locals 0

    .line 16001
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->setAutoSaveType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;)V

    return-void
.end method

.method static synthetic access$28300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)V
    .locals 0

    .line 16001
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->clearAutoSaveType()V

    return-void
.end method

.method private clearAutoSaveType()V
    .locals 1

    const/4 v0, 0x0

    .line 16240
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 16165
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearRecordingStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 16080
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16045
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16115
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1

    .line 16716
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16353
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;
    .locals 1

    .line 16356
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16330
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16336
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16294
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16301
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16341
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16348
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16318
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16325
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16306
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16313
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;",
            ">;"
        }
    .end annotation

    .line 16722
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAutoSaveType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;)V
    .locals 0

    .line 16226
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16229
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    return-void
.end method

.method private setAutoSaveTypeValue(I)V
    .locals 0

    .line 16215
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 16151
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16154
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 16177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16179
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 16181
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    return-void
.end method

.method private setRecordingStatus(I)V
    .locals 0

    .line 16069
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 16034
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0

    .line 16104
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 16604
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 16704
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16695
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    monitor-enter p1

    .line 16696
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 16697
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 16699
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 16701
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 16635
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 16637
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 16642
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

    const/16 p3, 0x22

    if-eq p1, p3, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    .line 16648
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 16675
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 16677
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    goto :goto_1

    .line 16669
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 16671
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    goto :goto_1

    .line 16665
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    goto :goto_1

    .line 16660
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    goto :goto_1

    .line 16655
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J
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

    .line 16685
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 16687
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 16683
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16688
    :goto_3
    throw p1

    .line 16692
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p1

    .line 16618
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 16619
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    .line 16620
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_a

    move v4, v2

    goto :goto_4

    :cond_a
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_b

    move v7, v2

    goto :goto_5

    :cond_b
    move v7, v1

    :goto_5
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    .line 16622
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_7

    :cond_d
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    .line 16624
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_e

    move v4, v2

    goto :goto_8

    :cond_e
    move v4, v1

    :goto_8
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_f

    move v7, v2

    goto :goto_9

    :cond_f
    move v7, v1

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    .line 16626
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    .line 16627
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    .line 16626
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    .line 16628
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_a

    :cond_10
    move v0, v1

    :goto_a
    iget p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    if-eqz p3, :cond_11

    move v1, v2

    :cond_11
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    .line 16629
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 16615
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 16609
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    return-object p1

    .line 16606
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;-><init>()V

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

.method public getAutoSaveType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;
    .locals 1

    .line 16204
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16205
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    :cond_0
    return-object v0
.end method

.method public getAutoSaveTypeValue()I
    .locals 1

    .line 16194
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 16128
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 16139
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingStatus()I
    .locals 1

    .line 16058
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 16023
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 16263
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 16267
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 16269
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16271
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 16273
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16275
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 16277
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16279
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 16281
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16283
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kNormalType:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 16284
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    .line 16285
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16287
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 16093
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    return-wide v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16245
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 16246
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16248
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->recordingStatus_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 16249
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 16251
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->timestamp_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 16252
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16254
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->name_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 16255
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 16257
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->kNormalType:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 16258
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;->autoSaveType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_4
    return-void
.end method
