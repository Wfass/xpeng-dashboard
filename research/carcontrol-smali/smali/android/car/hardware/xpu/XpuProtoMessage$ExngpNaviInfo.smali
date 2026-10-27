.class public final Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExngpNaviInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

.field public static final EXIT_ID_FIELD_NUMBER:I = 0x3

.field public static final EXNGP_MAP_ID_FIELD_NUMBER:I = 0x1

.field public static final LANDMARK_TYPE_FIELD_NUMBER:I = 0x5

.field public static final MAP_VERSION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOT_ID_FIELD_NUMBER:I = 0x4

.field public static final TARGET_LANDMARK_ID_FIELD_NUMBER:I = 0x6


# instance fields
.field private exitId_:J

.field private exngpMapId_:Ljava/lang/String;

.field private landmarkType_:I

.field private mapVersion_:Ljava/lang/String;

.field private slotId_:Ljava/lang/String;

.field private targetLandmarkId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20195
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    .line 20196
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 19234
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 19235
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    .line 19236
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 19237
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    .line 19238
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19239
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    .line 19240
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$45600()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1

    .line 19229
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object v0
.end method

.method static synthetic access$45700(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setExngpMapId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$45800(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 19229
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->clearExngpMapId()V

    return-void
.end method

.method static synthetic access$45900(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setExngpMapIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$46000(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setMapVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$46100(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 19229
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->clearMapVersion()V

    return-void
.end method

.method static synthetic access$46200(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setMapVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$46300(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;J)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setExitId(J)V

    return-void
.end method

.method static synthetic access$46400(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 19229
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->clearExitId()V

    return-void
.end method

.method static synthetic access$46500(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setSlotId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$46600(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 19229
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->clearSlotId()V

    return-void
.end method

.method static synthetic access$46700(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setSlotIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$46800(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;I)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setLandmarkTypeValue(I)V

    return-void
.end method

.method static synthetic access$46900(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setLandmarkType(Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;)V

    return-void
.end method

.method static synthetic access$47000(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 19229
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->clearLandmarkType()V

    return-void
.end method

.method static synthetic access$47100(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setTargetLandmarkId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$47200(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 19229
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->clearTargetLandmarkId()V

    return-void
.end method

.method static synthetic access$47300(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19229
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->setTargetLandmarkIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method private clearExitId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19406
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    return-void
.end method

.method private clearExngpMapId()V
    .locals 1

    .line 19289
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getExngpMapId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    return-void
.end method

.method private clearLandmarkType()V
    .locals 1

    const/4 v0, 0x0

    .line 19531
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    return-void
.end method

.method private clearMapVersion()V
    .locals 1

    .line 19355
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getMapVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearSlotId()V
    .locals 1

    .line 19456
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getSlotId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    return-void
.end method

.method private clearTargetLandmarkId()V
    .locals 1

    .line 19581
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getTargetLandmarkId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1

    .line 20200
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;
    .locals 1

    .line 19717
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;
    .locals 1

    .line 19720
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19694
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19700
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19658
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19665
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19705
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19712
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19682
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19689
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19670
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19677
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;",
            ">;"
        }
    .end annotation

    .line 20206
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExitId(J)V
    .locals 0

    .line 19395
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    return-void
.end method

.method private setExngpMapId(Ljava/lang/String;)V
    .locals 0

    .line 19275
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19278
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    return-void
.end method

.method private setExngpMapIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19301
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19303
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19305
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    return-void
.end method

.method private setLandmarkType(Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;)V
    .locals 0

    .line 19517
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19520
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    return-void
.end method

.method private setLandmarkTypeValue(I)V
    .locals 0

    .line 19506
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    return-void
.end method

.method private setMapVersion(Ljava/lang/String;)V
    .locals 0

    .line 19341
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19344
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMapVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19367
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19369
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19371
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSlotId(Ljava/lang/String;)V
    .locals 0

    .line 19442
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19445
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    return-void
.end method

.method private setSlotIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19468
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19470
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19472
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    return-void
.end method

.method private setTargetLandmarkId(Ljava/lang/String;)V
    .locals 0

    .line 19567
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19570
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    return-void
.end method

.method private setTargetLandmarkIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19593
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19595
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19597
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 20078
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 20188
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20179
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    monitor-enter p1

    .line 20180
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 20181
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 20183
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 20185
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 20111
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 20113
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 20118
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 p3, 0xa

    if-eq p1, p3, :cond_8

    const/16 p3, 0x12

    if-eq p1, p3, :cond_7

    const/16 p3, 0x18

    if-eq p1, p3, :cond_6

    const/16 p3, 0x22

    if-eq p1, p3, :cond_5

    const/16 p3, 0x28

    if-eq p1, p3, :cond_4

    const/16 p3, 0x32

    if-eq p1, p3, :cond_3

    .line 20124
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 20159
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20161
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    goto :goto_1

    .line 20153
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 20155
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    goto :goto_1

    .line 20147
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20149
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    goto :goto_1

    .line 20143
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    goto :goto_1

    .line 20136
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20138
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    goto :goto_1

    .line 20130
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20132
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 20169
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 20171
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 20167
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20172
    :goto_3
    throw p1

    .line 20176
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p1

    .line 20092
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 20093
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    .line 20094
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    .line 20095
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    .line 20094
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    .line 20096
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    .line 20097
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    .line 20096
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    .line 20098
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_4

    :cond_b
    move p1, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_c

    move v7, v2

    goto :goto_5

    :cond_c
    move v7, v1

    :goto_5
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    .line 20100
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    .line 20101
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    .line 20100
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    .line 20102
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    if-eqz v3, :cond_e

    move v1, v2

    :cond_e
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    .line 20103
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    iget-object v1, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    .line 20104
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    .line 20103
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    .line 20105
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 20089
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 20083
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-object p1

    .line 20080
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;-><init>()V

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

.method public getExitId()J
    .locals 2

    .line 19384
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    return-wide v0
.end method

.method public getExngpMapId()Ljava/lang/String;
    .locals 1

    .line 19252
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    return-object v0
.end method

.method public getExngpMapIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19263
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarkType()Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;
    .locals 1

    .line 19495
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19496
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    :cond_0
    return-object v0
.end method

.method public getLandmarkTypeValue()I
    .locals 1

    .line 19485
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    return v0
.end method

.method public getMapVersion()Ljava/lang/String;
    .locals 1

    .line 19318
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMapVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 19623
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 19627
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 19629
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getExngpMapId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19631
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 19633
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getMapVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19635
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 19637
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19639
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 19641
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19643
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kUnkonwnLandmarkType:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 19644
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    .line 19645
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19647
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 19649
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getTargetLandmarkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19651
    :cond_6
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlotId()Ljava/lang/String;
    .locals 1

    .line 19419
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19430
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTargetLandmarkId()Ljava/lang/String;
    .locals 1

    .line 19544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLandmarkIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19555
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19602
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exngpMapId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 19603
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getExngpMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19605
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->mapVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 19606
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getMapVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19608
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->exitId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 19609
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 19611
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->slotId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 19612
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19614
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->kUnkonwnLandmarkType:Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$LandmarkType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 19615
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->landmarkType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19617
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->targetLandmarkId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 19618
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getTargetLandmarkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
