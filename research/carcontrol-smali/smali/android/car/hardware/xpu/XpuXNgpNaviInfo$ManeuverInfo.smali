.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManeuverInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

.field public static final MANEUVERDATA_FIELD_NUMBER:I = 0x2

.field public static final MANEUVERID_FIELD_NUMBER:I = 0x1

.field public static final MANEUVER_TYPE_FIELD_NUMBER:I = 0x3

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_INDEX_FIELD_NUMBER:I = 0x6

.field public static final SEGMENT_INDEX_FIELD_NUMBER:I = 0x5


# instance fields
.field private maneuverData_:Ljava/lang/String;

.field private maneuverID_:J

.field private maneuverType_:I

.field private navigationId_:J

.field private pointIndex_:J

.field private segmentIndex_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5291
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    .line 5292
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 4623
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 4624
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    const-string v2, ""

    .line 4625
    iput-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    const/4 v2, 0x0

    .line 4626
    iput v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    .line 4627
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    .line 4628
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    .line 4629
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    return-void
.end method

.method static synthetic access$4600()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1

    .line 4618
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V
    .locals 0

    .line 4618
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->setManeuverID(J)V

    return-void
.end method

.method static synthetic access$4800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 4618
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->clearManeuverID()V

    return-void
.end method

.method static synthetic access$4900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;Ljava/lang/String;)V
    .locals 0

    .line 4618
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->setManeuverData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 4618
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->clearManeuverData()V

    return-void
.end method

.method static synthetic access$5100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4618
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->setManeuverDataBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;I)V
    .locals 0

    .line 4618
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->setManeuverType(I)V

    return-void
.end method

.method static synthetic access$5300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 4618
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->clearManeuverType()V

    return-void
.end method

.method static synthetic access$5400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V
    .locals 0

    .line 4618
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$5500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 4618
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$5600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V
    .locals 0

    .line 4618
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->setSegmentIndex(J)V

    return-void
.end method

.method static synthetic access$5700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 4618
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->clearSegmentIndex()V

    return-void
.end method

.method static synthetic access$5800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;J)V
    .locals 0

    .line 4618
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->setPointIndex(J)V

    return-void
.end method

.method static synthetic access$5900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 4618
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->clearPointIndex()V

    return-void
.end method

.method private clearManeuverData()V
    .locals 1

    .line 4713
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-void
.end method

.method private clearManeuverID()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4663
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    return-void
.end method

.method private clearManeuverType()V
    .locals 1

    const/4 v0, 0x0

    .line 4752
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4787
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    return-void
.end method

.method private clearPointIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4833
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    return-void
.end method

.method private clearSegmentIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4810
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1

    .line 5296
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 4953
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;
    .locals 1

    .line 4956
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4930
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4936
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4894
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4901
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4941
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4948
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4918
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4925
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4906
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4913
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation

    .line 5302
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setManeuverData(Ljava/lang/String;)V
    .locals 0

    .line 4699
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4702
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-void
.end method

.method private setManeuverDataBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4725
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4727
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 4729
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-void
.end method

.method private setManeuverID(J)V
    .locals 0

    .line 4652
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    return-void
.end method

.method private setManeuverType(I)V
    .locals 0

    .line 4745
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 4776
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    return-void
.end method

.method private setPointIndex(J)V
    .locals 0

    .line 4826
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    return-void
.end method

.method private setSegmentIndex(J)V
    .locals 0

    .line 4803
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 5177
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 5284
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5275
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    monitor-enter p1

    .line 5276
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5277
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 5279
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5281
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 5211
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 5213
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 5218
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_8

    const/16 p3, 0x12

    if-eq p1, p3, :cond_7

    const/16 p3, 0x18

    if-eq p1, p3, :cond_6

    const/16 p3, 0x20

    if-eq p1, p3, :cond_5

    const/16 p3, 0x28

    if-eq p1, p3, :cond_4

    const/16 p3, 0x30

    if-eq p1, p3, :cond_3

    .line 5224
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 5257
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    goto :goto_1

    .line 5252
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    goto :goto_1

    .line 5247
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    goto :goto_1

    .line 5242
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    goto :goto_1

    .line 5235
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 5237
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    goto :goto_1

    .line 5231
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J
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

    .line 5265
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 5267
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5263
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5268
    :goto_3
    throw p1

    .line 5272
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p1

    .line 5191
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 5192
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    .line 5193
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    const-wide/16 p1, 0x0

    cmp-long v3, v5, p1

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_4

    :cond_b
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_c

    move v7, v2

    goto :goto_5

    :cond_c
    move v7, v1

    :goto_5
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    .line 5195
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    .line 5196
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    .line 5195
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    .line 5197
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_6

    :cond_d
    move v4, v1

    :goto_6
    iget v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    if-eqz v5, :cond_e

    move v6, v2

    goto :goto_7

    :cond_e
    move v6, v1

    :goto_7
    invoke-interface {v0, v4, v3, v6, v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v3

    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    .line 5199
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    cmp-long v3, v5, p1

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_8

    :cond_f
    move v4, v1

    :goto_8
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_10

    move v7, v2

    goto :goto_9

    :cond_10
    move v7, v1

    :goto_9
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    .line 5201
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    cmp-long v3, v5, p1

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_a

    :cond_11
    move v4, v1

    :goto_a
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_12

    move v7, v2

    goto :goto_b

    :cond_12
    move v7, v1

    :goto_b
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    .line 5203
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_13

    move v5, v2

    goto :goto_c

    :cond_13
    move v5, v1

    :goto_c
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_14

    move p1, v2

    goto :goto_d

    :cond_14
    move p1, v1

    :goto_d
    move v1, v5

    move-wide v2, v3

    move v4, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    .line 5205
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 5188
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 5182
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p1

    .line 5179
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;-><init>()V

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

    .line 4676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    return-object v0
.end method

.method public getManeuverDataBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4687
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverID()J
    .locals 2

    .line 4641
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    return-wide v0
.end method

.method public getManeuverType()I
    .locals 1

    .line 4738
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 4765
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    return-wide v0
.end method

.method public getPointIndex()J
    .locals 2

    .line 4819
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    return-wide v0
.end method

.method public getSegmentIndex()J
    .locals 2

    .line 4796
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 4859
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4863
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 4865
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4867
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 4869
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4871
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 4873
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4875
    :cond_3
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 4877
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4879
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 4881
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4883
    :cond_5
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 4885
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4887
    :cond_6
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4838
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverID_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 4839
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4841
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverData_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4842
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getManeuverData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 4844
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->maneuverType_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 4845
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4847
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->navigationId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 4848
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4850
    :cond_3
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->segmentIndex_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 4851
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4853
    :cond_4
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->pointIndex_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 4854
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_5
    return-void
.end method
