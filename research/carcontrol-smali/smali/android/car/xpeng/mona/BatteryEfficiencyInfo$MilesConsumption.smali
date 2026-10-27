.class public final Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "BatteryEfficiencyInfo.java"

# interfaces
.implements Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mona/BatteryEfficiencyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MilesConsumption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;",
        ">;",
        "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumptionOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONSUMPTION_KM_100_FIELD_NUMBER:I = 0x3

.field public static final CONSUMPTION_KM_10_FIELD_NUMBER:I = 0x1

.field public static final CONSUMPTION_KM_50_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

.field public static final MILES_CALCULATED_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

.field private consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

.field private consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

.field private milesCalculated_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 643
    new-instance v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-direct {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;-><init>()V

    sput-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    .line 644
    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    return-void
.end method

.method static synthetic access$000()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1

    .line 50
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->setConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->setConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->mergeConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->clearConsumptionKm100()V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->setMilesCalculated(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->clearMilesCalculated()V

    return-void
.end method

.method static synthetic access$200(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->setConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->mergeConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->clearConsumptionKm10()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->setConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-void
.end method

.method static synthetic access$600(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->setConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V

    return-void
.end method

.method static synthetic access$700(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->mergeConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-void
.end method

.method static synthetic access$800(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->clearConsumptionKm50()V

    return-void
.end method

.method static synthetic access$900(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->setConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V

    return-void
.end method

.method private clearConsumptionKm10()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private clearConsumptionKm100()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private clearConsumptionKm50()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private clearMilesCalculated()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1

    .line 648
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object v0
.end method

.method private mergeConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 2

    .line 94
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 97
    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->newBuilder(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    goto :goto_0

    .line 99
    :cond_0
    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    :goto_0
    return-void
.end method

.method private mergeConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 2

    .line 198
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 201
    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->newBuilder(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    goto :goto_0

    .line 203
    :cond_0
    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    :goto_0
    return-void
.end method

.method private mergeConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 2

    .line 146
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 149
    invoke-static {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->newBuilder(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    goto :goto_0

    .line 151
    :cond_0
    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 340
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;
    .locals 1

    .line 343
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;

    invoke-virtual {v0, p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0, p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 281
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 288
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 293
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 300
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;",
            ">;"
        }
    .end annotation

    .line 654
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-virtual {v0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V
    .locals 0

    .line 87
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private setConsumptionKm10(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 77
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private setConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V
    .locals 0

    .line 191
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private setConsumptionKm100(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private setConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;)V
    .locals 0

    .line 139
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private setConsumptionKm50(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;)V
    .locals 0

    .line 129
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    return-void
.end method

.method private setMilesCalculated(I)V
    .locals 0

    .line 227
    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 523
    sget-object v0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 636
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 627
    :pswitch_0
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    monitor-enter p1

    .line 628
    :try_start_0
    sget-object p2, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 629
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 631
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 633
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 550
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 552
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_b

    .line 557
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v3, 0xa

    if-eq p1, v3, :cond_8

    const/16 v3, 0x12

    if-eq p1, v3, :cond_6

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_4

    const/16 v3, 0x20

    if-eq p1, v3, :cond_3

    .line 563
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 609
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    goto :goto_1

    .line 596
    :cond_4
    iget-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz p1, :cond_5

    .line 597
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v2

    .line 599
    :goto_2
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object v3, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz p1, :cond_2

    .line 601
    invoke-virtual {p1, v3}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 602
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    goto :goto_1

    .line 583
    :cond_6
    iget-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz p1, :cond_7

    .line 584
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v2

    .line 586
    :goto_3
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object v3, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz p1, :cond_2

    .line 588
    invoke-virtual {p1, v3}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 589
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    goto :goto_1

    .line 570
    :cond_8
    iget-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz p1, :cond_9

    .line 571
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;

    goto :goto_4

    :cond_9
    move-object p1, v2

    .line 573
    :goto_4
    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object v3, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz p1, :cond_2

    .line 575
    invoke-virtual {p1, v3}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 576
    invoke-virtual {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_a
    :goto_5
    move v0, v1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 617
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 619
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 615
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 620
    :goto_6
    throw p1

    .line 624
    :cond_b
    :pswitch_2
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p1

    .line 537
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 538
    check-cast p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    .line 539
    iget-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iget-object v2, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-interface {p2, p1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 540
    iget-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iget-object v2, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-interface {p2, p1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 541
    iget-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iget-object v2, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    invoke-interface {p2, p1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    iput-object p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    .line 542
    iget p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    if-eqz p1, :cond_c

    move v2, v1

    goto :goto_7

    :cond_c
    move v2, v0

    :goto_7
    iget p3, p3, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    if-eqz p3, :cond_d

    move v0, v1

    :cond_d
    invoke-interface {p2, v2, p1, v0, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    .line 544
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 534
    :pswitch_4
    new-instance p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;

    invoke-direct {p1, v2}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption$Builder;-><init>(Landroid/car/xpeng/mona/BatteryEfficiencyInfo$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    .line 528
    :pswitch_6
    sget-object p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->DEFAULT_INSTANCE:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    return-object p1

    .line 525
    :pswitch_7
    new-instance p1, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;

    invoke-direct {p1}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;-><init>()V

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

.method public getConsumptionKm10()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConsumptionKm100()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConsumptionKm50()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;->getDefaultInstance()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMilesCalculated()I
    .locals 1

    .line 220
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 254
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 260
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm10()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_1
    iget-object v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 264
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm50()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_2
    iget-object v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 268
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm100()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_3
    iget v1, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 272
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    :cond_4
    iput v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->memoizedSerializedSize:I

    return v0
.end method

.method public hasConsumptionKm10()Z
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConsumptionKm100()Z
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConsumptionKm50()Z
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

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

    .line 239
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm10_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm10()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm50_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 243
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm50()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 245
    :cond_1
    iget-object v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->consumptionKm100_:Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 246
    invoke-virtual {p0}, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->getConsumptionKm100()Landroid/car/xpeng/mona/BatteryEfficiencyInfo$ConsumptionDetail;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 248
    :cond_2
    iget v0, p0, Landroid/car/xpeng/mona/BatteryEfficiencyInfo$MilesConsumption;->milesCalculated_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 249
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    return-void
.end method
