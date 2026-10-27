.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManeuverInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

.field public static final MANEUVERDATA_FIELD_NUMBER:I = 0x2

.field public static final MANEUVERID_FIELD_NUMBER:I = 0x1

.field public static final MANEUVER_TYPE_FIELD_NUMBER:I = 0x3

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_INDEX_FIELD_NUMBER:I = 0x5


# instance fields
.field private maneuverData_:Ljava/lang/String;

.field private maneuverID_:J

.field private maneuverType_:I

.field private navigationId_:J

.field private segmentIndex_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5507
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    .line 5508
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 4900
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 4901
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    const-string v2, ""

    .line 4902
    iput-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4903
    iput v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    .line 4904
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    .line 4905
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    return-void
.end method

.method static synthetic access$5200()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1

    .line 4895
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;J)V
    .locals 0

    .line 4895
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->setManeuverID(J)V

    return-void
.end method

.method static synthetic access$5400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 4895
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->clearManeuverID()V

    return-void
.end method

.method static synthetic access$5500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;Ljava/lang/String;)V
    .locals 0

    .line 4895
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->setManeuverData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 4895
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->clearManeuverData()V

    return-void
.end method

.method static synthetic access$5700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4895
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->setManeuverDataBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;I)V
    .locals 0

    .line 4895
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->setManeuverType(I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 4895
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->clearManeuverType()V

    return-void
.end method

.method static synthetic access$6000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;J)V
    .locals 0

    .line 4895
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$6100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 4895
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$6200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;J)V
    .locals 0

    .line 4895
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->setSegmentIndex(J)V

    return-void
.end method

.method static synthetic access$6300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 4895
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->clearSegmentIndex()V

    return-void
.end method

.method private clearManeuverData()V
    .locals 1

    .line 4989
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-void
.end method

.method private clearManeuverID()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4939
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    return-void
.end method

.method private clearManeuverType()V
    .locals 1

    const/4 v0, 0x0

    .line 5028
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5063
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    return-void
.end method

.method private clearSegmentIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5086
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1

    .line 5512
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5199
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;
    .locals 1

    .line 5202
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5176
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5182
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5140
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5147
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5187
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5194
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5164
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5171
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5152
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5159
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;",
            ">;"
        }
    .end annotation

    .line 5518
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setManeuverData(Ljava/lang/String;)V
    .locals 0

    .line 4975
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4978
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-void
.end method

.method private setManeuverDataBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 5001
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5003
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 5005
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-void
.end method

.method private setManeuverID(J)V
    .locals 0

    .line 4928
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    return-void
.end method

.method private setManeuverType(I)V
    .locals 0

    .line 5021
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 5052
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    return-void
.end method

.method private setSegmentIndex(J)V
    .locals 0

    .line 5079
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 5400
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 5500
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5491
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    monitor-enter p1

    .line 5492
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5493
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 5495
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5497
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 5432
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 5434
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 5439
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_7

    const/16 p3, 0x12

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_5

    const/16 p3, 0x20

    if-eq p1, p3, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    .line 5445
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 5473
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    goto :goto_1

    .line 5468
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    goto :goto_1

    .line 5463
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    goto :goto_1

    .line 5456
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 5458
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    goto :goto_1

    .line 5452
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J
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

    .line 5481
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 5483
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5479
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5484
    :goto_3
    throw p1

    .line 5488
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p1

    .line 5414
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 5415
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    .line 5416
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    const-wide/16 p1, 0x0

    cmp-long v3, v5, p1

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_4

    :cond_a
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_b

    move v7, v2

    goto :goto_5

    :cond_b
    move v7, v1

    :goto_5
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    .line 5418
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    .line 5419
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    .line 5418
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    .line 5420
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_6

    :cond_c
    move v4, v1

    :goto_6
    iget v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    if-eqz v5, :cond_d

    move v6, v2

    goto :goto_7

    :cond_d
    move v6, v1

    :goto_7
    invoke-interface {v0, v4, v3, v6, v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v3

    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    .line 5422
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    cmp-long v3, v5, p1

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_8

    :cond_e
    move v4, v1

    :goto_8
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_f

    move v7, v2

    goto :goto_9

    :cond_f
    move v7, v1

    :goto_9
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    .line 5424
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_10

    move v5, v2

    goto :goto_a

    :cond_10
    move v5, v1

    :goto_a
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_11

    move p1, v2

    goto :goto_b

    :cond_11
    move p1, v1

    :goto_b
    move v1, v5

    move-wide v2, v3

    move v4, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    .line 5426
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 5411
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 5405
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object p1

    .line 5402
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;-><init>()V

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

.method public getManeuverData()Ljava/lang/String;
    .locals 1

    .line 4952
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-object v0
.end method

.method public getManeuverDataBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4963
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverID()J
    .locals 2

    .line 4917
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    return-wide v0
.end method

.method public getManeuverType()I
    .locals 1

    .line 5014
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 5041
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    return-wide v0
.end method

.method public getSegmentIndex()J
    .locals 2

    .line 5072
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 5109
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5113
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 5115
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5117
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5119
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5121
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 5123
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5125
    :cond_3
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 5127
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5129
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 5131
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5133
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5091
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverID_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 5092
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5094
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 5095
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 5097
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->maneuverType_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 5098
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5100
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->navigationId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 5101
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 5103
    :cond_3
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->segmentIndex_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 5104
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_4
    return-void
.end method
