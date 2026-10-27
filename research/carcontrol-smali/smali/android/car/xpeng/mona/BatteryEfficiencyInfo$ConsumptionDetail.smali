.class public final Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "BatteryEfficiencyInfo.java"

# interfaces
.implements Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mona/BatteryEfficiencyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConsumptionDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;",
        ">;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetailOrBuilder;"
    }
.end annotation


# static fields
.field public static final AIR_CONDITIONER_ENERGY_FIELD_NUMBER:I = 0x4

.field public static final BMS_ENERGY_FIELD_NUMBER:I = 0x6

.field public static final BULB_ENERGY_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

.field public static final DRIVE_ENERGY_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEAT_HEAT_ENERGY_FIELD_NUMBER:I = 0x7

.field public static final TOTAL_CONSUME_ENERGY_FIELD_NUMBER:I = 0x1

.field public static final TOTAL_ENERGY_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_RECYCLE_ENERGY_FIELD_NUMBER:I = 0x2


# instance fields
.field private airConditionerEnergy_:F

.field private bmsEnergy_:F

.field private bulbEnergy_:F

.field private driveEnergy_:F

.field private seatHeatEnergy_:F

.field private totalConsumeEnergy_:F

.field private totalEnergy_:F

.field private totalRecycleEnergy_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1595
    new-instance v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-direct {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;-><init>()V

    sput-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 1596
    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 742
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 743
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    .line 744
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    .line 745
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    .line 746
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    .line 747
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    .line 748
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    .line 749
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    .line 750
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    return-void
.end method

.method static synthetic access$1600()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 737
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setTotalConsumeEnergy(F)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearTotalConsumeEnergy()V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setTotalRecycleEnergy(F)V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearTotalRecycleEnergy()V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setTotalEnergy(F)V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearTotalEnergy()V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setAirConditionerEnergy(F)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearAirConditionerEnergy()V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setDriveEnergy(F)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearDriveEnergy()V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setBmsEnergy(F)V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearBmsEnergy()V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setSeatHeatEnergy(F)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearSeatHeatEnergy()V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;F)V
    .locals 0

    .line 737
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->setBulbEnergy(F)V

    return-void
.end method

.method static synthetic access$3200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->clearBulbEnergy()V

    return-void
.end method

.method private clearAirConditionerEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 889
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    return-void
.end method

.method private clearBmsEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 959
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    return-void
.end method

.method private clearBulbEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 1029
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    return-void
.end method

.method private clearDriveEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 924
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    return-void
.end method

.method private clearSeatHeatEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    return-void
.end method

.method private clearTotalConsumeEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 784
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    return-void
.end method

.method private clearTotalEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 854
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    return-void
.end method

.method private clearTotalRecycleEnergy()V
    .locals 1

    const/4 v0, 0x0

    .line 819
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 1600
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1163
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;
    .locals 1

    .line 1166
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    invoke-virtual {v0, p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1140
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1104
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1111
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1158
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1135
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1116
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1123
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;",
            ">;"
        }
    .end annotation

    .line 1606
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAirConditionerEnergy(F)V
    .locals 0

    .line 878
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    return-void
.end method

.method private setBmsEnergy(F)V
    .locals 0

    .line 948
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    return-void
.end method

.method private setBulbEnergy(F)V
    .locals 0

    .line 1018
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    return-void
.end method

.method private setDriveEnergy(F)V
    .locals 0

    .line 913
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    return-void
.end method

.method private setSeatHeatEnergy(F)V
    .locals 0

    .line 983
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    return-void
.end method

.method private setTotalConsumeEnergy(F)V
    .locals 0

    .line 773
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    return-void
.end method

.method private setTotalEnergy(F)V
    .locals 0

    .line 843
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    return-void
.end method

.method private setTotalRecycleEnergy(F)V
    .locals 0

    .line 808
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1468
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1588
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1579
    :pswitch_0
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    monitor-enter p1

    .line 1580
    :try_start_0
    sget-object p2, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1581
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1583
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1585
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1506
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1508
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_c

    .line 1513
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_b

    const/16 p3, 0xd

    if-eq p1, p3, :cond_a

    const/16 p3, 0x15

    if-eq p1, p3, :cond_9

    const/16 p3, 0x1d

    if-eq p1, p3, :cond_8

    const/16 p3, 0x25

    if-eq p1, p3, :cond_7

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_6

    const/16 p3, 0x35

    if-eq p1, p3, :cond_5

    const/16 p3, 0x3d

    if-eq p1, p3, :cond_4

    const/16 p3, 0x45

    if-eq p1, p3, :cond_3

    .line 1519
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1561
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    goto :goto_1

    .line 1556
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    goto :goto_1

    .line 1551
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    goto :goto_1

    .line 1546
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    goto :goto_1

    .line 1541
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    goto :goto_1

    .line 1536
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    goto :goto_1

    .line 1531
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    goto :goto_1

    .line 1526
    :cond_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_b
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1569
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1571
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1567
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1572
    :goto_3
    throw p1

    .line 1576
    :cond_c
    :pswitch_2
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p1

    .line 1482
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1483
    check-cast p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 1484
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_4

    :cond_d
    move v3, v1

    :goto_4
    iget v4, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_5

    :cond_e
    move v5, v1

    :goto_5
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    .line 1486
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_6

    :cond_f
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_10

    move v5, v2

    goto :goto_7

    :cond_10
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    .line 1488
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_8

    :cond_11
    move v3, v1

    :goto_8
    iget v4, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_12

    move v5, v2

    goto :goto_9

    :cond_12
    move v5, v1

    :goto_9
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    .line 1490
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_a

    :cond_13
    move v3, v1

    :goto_a
    iget v4, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_14

    move v5, v2

    goto :goto_b

    :cond_14
    move v5, v1

    :goto_b
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    .line 1492
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_c

    :cond_15
    move v3, v1

    :goto_c
    iget v4, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_16

    move v5, v2

    goto :goto_d

    :cond_16
    move v5, v1

    :goto_d
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    .line 1494
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_e

    :cond_17
    move v3, v1

    :goto_e
    iget v4, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_18

    move v5, v2

    goto :goto_f

    :cond_18
    move v5, v1

    :goto_f
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    .line 1496
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_19

    move v3, v2

    goto :goto_10

    :cond_19
    move v3, v1

    :goto_10
    iget v4, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_1a

    move v5, v2

    goto :goto_11

    :cond_1a
    move v5, v1

    :goto_11
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    .line 1498
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_1b

    move v3, v2

    goto :goto_12

    :cond_1b
    move v3, v1

    :goto_12
    iget p3, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1c

    move v1, v2

    :cond_1c
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    .line 1500
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1479
    :pswitch_4
    new-instance p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    invoke-direct {p1, v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;-><init>(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1473
    :pswitch_6
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-object p1

    .line 1470
    :pswitch_7
    new-instance p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-direct {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;-><init>()V

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

.method public getAirConditionerEnergy()F
    .locals 1

    .line 867
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    return v0
.end method

.method public getBmsEnergy()F
    .locals 1

    .line 937
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    return v0
.end method

.method public getBulbEnergy()F
    .locals 1

    .line 1007
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    return v0
.end method

.method public getDriveEnergy()F
    .locals 1

    .line 902
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    return v0
.end method

.method public getSeatHeatEnergy()F
    .locals 1

    .line 972
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1061
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1065
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1067
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1069
    :cond_1
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 1071
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1073
    :cond_2
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 1075
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1077
    :cond_3
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 1079
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    :cond_4
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 1083
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_5
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 1087
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_6
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 1091
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_7
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 1095
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1097
    :cond_8
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->memoizedSerializedSize:I

    return v0
.end method

.method public getTotalConsumeEnergy()F
    .locals 1

    .line 762
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    return v0
.end method

.method public getTotalEnergy()F
    .locals 1

    .line 832
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    return v0
.end method

.method public getTotalRecycleEnergy()F
    .locals 1

    .line 797
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalConsumeEnergy_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1035
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1037
    :cond_0
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalRecycleEnergy_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 1038
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1040
    :cond_1
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->totalEnergy_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 1041
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1043
    :cond_2
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->airConditionerEnergy_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 1044
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1046
    :cond_3
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->driveEnergy_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 1047
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1049
    :cond_4
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bmsEnergy_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 1050
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1052
    :cond_5
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->seatHeatEnergy_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    .line 1053
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1055
    :cond_6
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->bulbEnergy_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 1056
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_7
    return-void
.end method
