.class public final Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "GuideTrafficLightProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/GuideTrafficLightProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GuideTrafficLight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightOrBuilder;"
    }
.end annotation


# static fields
.field public static final CDU_CROSS_MANEUVER_FIELD_NUMBER:I = 0x3

.field public static final CDU_LIGHT_COUNT_DOWN_FIELD_NUMBER:I = 0x4

.field public static final CDU_TFL_STATUS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

.field public static final FUSION_CROSS_MANEUVER_FIELD_NUMBER:I = 0x6

.field public static final FUSION_LIGHT_COUNT_DOWN_FIELD_NUMBER:I = 0x7

.field public static final FUSION_TFL_STATUS_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x2

.field public static final TIME_STAMP_FIELD_NUMBER:I = 0x1


# instance fields
.field private cduCrossManeuver_:I

.field private cduLightCountDown_:I

.field private cduTflStatus_:I

.field private fusionCrossManeuver_:I

.field private fusionLightCountDown_:I

.field private fusionTflStatus_:I

.field private position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

.field private timeStamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1847
    new-instance v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-direct {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    .line 1848
    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 753
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 754
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    const/4 v0, 0x0

    .line 755
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    .line 756
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    .line 757
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    .line 758
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    .line 759
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    .line 760
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearTimeStamp()V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setPosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setPosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->mergePosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearPosition()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setCduCrossManeuverValue(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setCduCrossManeuver(Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearCduCrossManeuver()V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setCduLightCountDown(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearCduLightCountDown()V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setCduTflStatusValue(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setCduTflStatus(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearCduTflStatus()V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setFusionCrossManeuverValue(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setFusionCrossManeuver(Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearFusionCrossManeuver()V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setFusionLightCountDown(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearFusionLightCountDown()V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;I)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setFusionTflStatusValue(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setFusionTflStatus(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->clearFusionTflStatus()V

    return-void
.end method

.method static synthetic access$800()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1

    .line 748
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object v0
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;J)V
    .locals 0

    .line 748
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->setTimeStamp(J)V

    return-void
.end method

.method private clearCduCrossManeuver()V
    .locals 1

    const/4 v0, 0x0

    .line 917
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    return-void
.end method

.method private clearCduLightCountDown()V
    .locals 1

    const/4 v0, 0x0

    .line 952
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    return-void
.end method

.method private clearCduTflStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1011
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    return-void
.end method

.method private clearFusionCrossManeuver()V
    .locals 1

    const/4 v0, 0x0

    .line 1070
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    return-void
.end method

.method private clearFusionLightCountDown()V
    .locals 1

    const/4 v0, 0x0

    .line 1105
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    return-void
.end method

.method private clearFusionTflStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1164
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    return-void
.end method

.method private clearPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 782
    iput-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1

    .line 1852
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object v0
.end method

.method private mergePosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V
    .locals 2

    .line 841
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    if-eqz v0, :cond_0

    .line 842
    invoke-static {}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->getDefaultInstance()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 843
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    .line 844
    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->newBuilder(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    iput-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    goto :goto_0

    .line 846
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1298
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;
    .locals 1

    .line 1301
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1275
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1281
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1239
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1246
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1263
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1251
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1258
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;",
            ">;"
        }
    .end annotation

    .line 1858
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCduCrossManeuver(Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V
    .locals 0

    .line 903
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    return-void
.end method

.method private setCduCrossManeuverValue(I)V
    .locals 0

    .line 892
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    return-void
.end method

.method private setCduLightCountDown(I)V
    .locals 0

    .line 941
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    return-void
.end method

.method private setCduTflStatus(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V
    .locals 0

    .line 997
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    return-void
.end method

.method private setCduTflStatusValue(I)V
    .locals 0

    .line 986
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    return-void
.end method

.method private setFusionCrossManeuver(Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;)V
    .locals 0

    .line 1056
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    return-void
.end method

.method private setFusionCrossManeuverValue(I)V
    .locals 0

    .line 1045
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    return-void
.end method

.method private setFusionLightCountDown(I)V
    .locals 0

    .line 1094
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    return-void
.end method

.method private setFusionTflStatus(Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;)V
    .locals 0

    .line 1150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    return-void
.end method

.method private setFusionTflStatusValue(I)V
    .locals 0

    .line 1139
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    return-void
.end method

.method private setPosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;)V
    .locals 0

    .line 830
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    iput-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-void
.end method

.method private setPosition(Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;)V
    .locals 0

    .line 816
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iput-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    return-void
.end method

.method private setTimeStamp(J)V
    .locals 0

    .line 775
    iput-wide p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1713
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1840
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1831
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    monitor-enter p1

    .line 1832
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1833
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1835
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1837
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1746
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1748
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_d

    .line 1753
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 v3, 0x8

    if-eq p1, v3, :cond_b

    const/16 v3, 0x12

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_8

    const/16 v3, 0x20

    if-eq p1, v3, :cond_7

    const/16 v3, 0x28

    if-eq p1, v3, :cond_6

    const/16 v3, 0x30

    if-eq p1, v3, :cond_5

    const/16 v3, 0x38

    if-eq p1, v3, :cond_4

    const/16 v3, 0x40

    if-eq p1, v3, :cond_3

    .line 1759
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 1811
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 1813
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    goto :goto_1

    .line 1807
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    goto :goto_1

    .line 1800
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 1802
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    goto :goto_1

    .line 1794
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 1796
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    goto :goto_1

    .line 1790
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    goto :goto_1

    .line 1783
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 1785
    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    goto :goto_1

    .line 1771
    :cond_9
    iget-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    if-eqz p1, :cond_a

    .line 1772
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;

    goto :goto_2

    :cond_a
    move-object p1, v0

    .line 1774
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    iput-object v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    if-eqz p1, :cond_2

    .line 1776
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 1777
    invoke-virtual {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    iput-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    goto :goto_1

    .line 1766
    :cond_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_3
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1821
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1823
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1819
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1824
    :goto_4
    throw p1

    .line 1828
    :cond_d
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p1

    .line 1727
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1728
    check-cast p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    .line 1729
    iget-wide v5, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_e

    move p1, v2

    goto :goto_5

    :cond_e
    move p1, v1

    :goto_5
    iget-wide v8, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_f

    move v7, v2

    goto :goto_6

    :cond_f
    move v7, v1

    :goto_6
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    .line 1731
    iget-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    iget-object v0, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    iput-object p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    .line 1732
    iget p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_7

    :cond_10
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_8

    :cond_11
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    .line 1733
    iget p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_9

    :cond_12
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_a

    :cond_13
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    .line 1735
    iget p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_b

    :cond_14
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    if-eqz v3, :cond_15

    move v4, v2

    goto :goto_c

    :cond_15
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    .line 1736
    iget p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_d

    :cond_16
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_e

    :cond_17
    move v4, v1

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    .line 1737
    iget p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_f

    :cond_18
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    if-eqz v3, :cond_19

    move v4, v2

    goto :goto_10

    :cond_19
    move v4, v1

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    .line 1739
    iget p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_11

    :cond_1a
    move v0, v1

    :goto_11
    iget p3, p3, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    if-eqz p3, :cond_1b

    move v1, v2

    :cond_1b
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    .line 1740
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1724
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight$Builder;-><init>(Landroid/car/hardware/xpu/GuideTrafficLightProto$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1718
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    return-object p1

    .line 1715
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;

    invoke-direct {p1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;-><init>()V

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

.method public getCduCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 1

    .line 881
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 882
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    :cond_0
    return-object v0
.end method

.method public getCduCrossManeuverValue()I
    .locals 1

    .line 871
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    return v0
.end method

.method public getCduLightCountDown()I
    .locals 1

    .line 930
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    return v0
.end method

.method public getCduTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 1

    .line 975
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 976
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    :cond_0
    return-object v0
.end method

.method public getCduTflStatusValue()I
    .locals 1

    .line 965
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    return v0
.end method

.method public getFusionCrossManeuver()Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;
    .locals 1

    .line 1034
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1035
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    :cond_0
    return-object v0
.end method

.method public getFusionCrossManeuverValue()I
    .locals 1

    .line 1024
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    return v0
.end method

.method public getFusionLightCountDown()I
    .locals 1

    .line 1083
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    return v0
.end method

.method public getFusionTflStatus()Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;
    .locals 1

    .line 1128
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->forNumber(I)Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1129
    sget-object v0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    :cond_0
    return-object v0
.end method

.method public getFusionTflStatusValue()I
    .locals 1

    .line 1118
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    return v0
.end method

.method public getPosition()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;
    .locals 1

    .line 805
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;->getDefaultInstance()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1196
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1200
    iget-wide v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1202
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1204
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 1206
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getPosition()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1208
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    sget-object v2, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UNKNOWN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1209
    iget v2, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    .line 1210
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1212
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 1214
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1216
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    sget-object v2, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_NONE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1217
    iget v2, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    .line 1218
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1220
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    sget-object v2, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UNKNOWN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_6

    const/4 v1, 0x6

    .line 1221
    iget v2, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    .line 1222
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1224
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 1226
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1228
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    sget-object v2, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_NONE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_8

    const/16 v1, 0x8

    .line 1229
    iget v2, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    .line 1230
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1232
    :cond_8
    iput v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 768
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    return-wide v0
.end method

.method public hasPosition()Z
    .locals 1

    .line 795
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

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

    .line 1169
    iget-wide v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->timeStamp_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1170
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1172
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->position_:Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 1173
    invoke-virtual {p0}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->getPosition()Landroid/car/hardware/xpu/GuideTrafficLightProto$Position;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 1175
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    sget-object v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UNKNOWN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1176
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduCrossManeuver_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1178
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduLightCountDown_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1179
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1181
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_NONE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1182
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->cduTflStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1184
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    sget-object v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->CROSS_MANEUVER_TYPE_UNKNOWN:Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$CrossManeuverType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    .line 1185
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionCrossManeuver_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1187
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionLightCountDown_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 1188
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1190
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->GUIDE_TRAFFIC_LIGHT_STATUS_NONE:Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLightStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_7

    const/16 v0, 0x8

    .line 1191
    iget v1, p0, Landroid/car/hardware/xpu/GuideTrafficLightProto$GuideTrafficLight;->fusionTflStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_7
    return-void
.end method
