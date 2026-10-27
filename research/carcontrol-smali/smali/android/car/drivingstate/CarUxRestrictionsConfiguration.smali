.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V1RestrictionConfigurationParser;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V2RestrictionConfigurationParser;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionConfigurationParser;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRIVING_STATES:[I

.field private static final JSON_NAME_IDLING_RESTRICTIONS:Ljava/lang/String; = "idling_restrictions"

.field private static final JSON_NAME_MAX_CONTENT_DEPTH:Ljava/lang/String; = "max_content_depth"

.field private static final JSON_NAME_MAX_CUMULATIVE_CONTENT_ITEMS:Ljava/lang/String; = "max_cumulative_content_items"

.field private static final JSON_NAME_MAX_SPEED:Ljava/lang/String; = "max_speed"

.field private static final JSON_NAME_MAX_STRING_LENGTH:Ljava/lang/String; = "max_string_length"

.field private static final JSON_NAME_MIN_SPEED:Ljava/lang/String; = "min_speed"

.field private static final JSON_NAME_MOVING_RESTRICTIONS:Ljava/lang/String; = "moving_restrictions"

.field private static final JSON_NAME_PARKED_RESTRICTIONS:Ljava/lang/String; = "parked_restrictions"

.field private static final JSON_NAME_PHYSICAL_PORT:Ljava/lang/String; = "physical_port"

.field private static final JSON_NAME_REQ_OPT:Ljava/lang/String; = "req_opt"

.field private static final JSON_NAME_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final JSON_NAME_SPEED_RANGE:Ljava/lang/String; = "speed_range"

.field private static final JSON_NAME_UNKNOWN_RESTRICTIONS:Ljava/lang/String; = "unknown_restrictions"

.field private static final TAG:Ljava/lang/String; = "CarUxRConfig"


# instance fields
.field private final mMaxContentDepth:I

.field private final mMaxCumulativeContentItems:I

.field private final mMaxStringLength:I

.field private final mPhysicalPort:Ljava/lang/Byte;

.field private final mRestrictionModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 605
    fill-array-data v0, :array_0

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    .line 612
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;-><init>()V

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 8

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    .line 85
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$000(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    .line 87
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$100(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    .line 88
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$200(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    .line 89
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$300(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    .line 93
    iget-object p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    new-instance v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-direct {v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;-><init>()V

    .line 96
    sget-object v3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v3, v5

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-virtual {v7, v6}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v7

    .line 98
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 97
    invoke-virtual {v2, v6, v7}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->setRestrictionsForDriveState(ILjava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 101
    :cond_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 635
    new-instance v4, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-direct {v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;-><init>()V

    .line 636
    sget-object v5, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 637
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 638
    sget-object v10, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v9, v10}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 639
    invoke-virtual {v4, v8, v9}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->setRestrictionsForDriveState(ILjava/util/List;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 641
    :cond_0
    iget-object v5, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 646
    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1700()[I
    .locals 1

    .line 53
    sget-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    return-object v0
.end method

.method static synthetic access$1800(I)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getDrivingStateName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/util/JsonReader;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsMode(Landroid/util/JsonReader;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    return-void
.end method

.method static synthetic access$900(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    return-void
.end method

.method private static createConfigurationParser(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionConfigurationParser;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 360
    new-instance p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V2RestrictionConfigurationParser;

    invoke-direct {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V2RestrictionConfigurationParser;-><init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V

    return-object p0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No parser supported for schemaVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    new-instance p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V1RestrictionConfigurationParser;

    invoke-direct {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$V1RestrictionConfigurationParser;-><init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V

    return-object p0
.end method

.method private createDefaultUxRestrictionsEvent()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1ff

    .line 199
    invoke-direct {p0, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    return-object v0
.end method

.method private createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 214
    :cond_0
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 216
    iget p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 217
    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 219
    :cond_1
    iget p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    if-eq p1, p2, :cond_2

    .line 220
    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 222
    :cond_2
    iget p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    if-eq p1, p2, :cond_3

    .line 223
    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 225
    :cond_3
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    return-object p1
.end method

.method private dumpRestrictions(Ljava/io/PrintWriter;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;>;)V"
        }
    .end annotation

    .line 571
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 572
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getDrivingStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " num restrictions:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 574
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requires DO? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nRestrictions: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    .line 577
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nSpeed Range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 579
    iget-object v4, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez v4, :cond_1

    const-string v2, "None"

    goto :goto_1

    .line 581
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v5}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "-------------------------------------------"

    .line 582
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static findUxRestrictionsInList(FLjava/util/List;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 185
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object v2, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez v2, :cond_1

    .line 187
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    return-object p0

    .line 190
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 191
    iget-object v2, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-virtual {v2, p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->includes(F)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method private static getDrivingStateName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "moving"

    return-object p0

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized state value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "idling"

    return-object p0

    :cond_2
    const-string p0, "parked"

    return-object p0

    :cond_3
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public static readJson(Landroid/util/JsonReader;I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "reader must not be null"

    .line 320
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, v0}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 324
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->createConfigurationParser(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionConfigurationParser;

    move-result-object p1

    .line 326
    new-instance v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    invoke-direct {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;-><init>()V

    .line 327
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 328
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "physical_port"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "max_string_length"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "max_content_depth"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    goto :goto_1

    :sswitch_3
    const-string v4, "max_cumulative_content_items"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 348
    invoke-interface {p1, p0, v2, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionConfigurationParser;->readJson(Landroid/util/JsonReader;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_0

    .line 332
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_4

    .line 333
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextNull()V

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validatePort(I)B

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setPhysicalPort(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto :goto_0

    .line 342
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto :goto_0

    .line 351
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 352
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->build()Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x613b8357 -> :sswitch_3
        -0x3f20641e -> :sswitch_2
        -0x3d6ef4c7 -> :sswitch_1
        0x5bb15ee9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readRestrictions(Landroid/util/JsonReader;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    .line 480
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 481
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "req_opt"

    .line 482
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "restrictions"

    .line 484
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "speed_range"

    .line 486
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    move v3, v2

    .line 492
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 493
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "min_speed"

    .line 494
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 495
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_3
    const-string v5, "max_speed"

    .line 496
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 497
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_1

    .line 499
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown name parsing json config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarUxRConfig"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 503
    :cond_5
    new-instance v4, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-direct {v4, v2, v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;-><init>(FF)V

    .line 504
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    move-object v2, v4

    goto/16 :goto_0

    .line 507
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 508
    new-instance p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;-><init>()V

    .line 509
    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p0

    .line 510
    invoke-virtual {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p0

    if-eqz v2, :cond_7

    .line 512
    invoke-virtual {p0, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setSpeedRange(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    :cond_7
    return-object p0
.end method

.method private static readRestrictionsList(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 466
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-static {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictions(Landroid/util/JsonReader;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object v0

    .line 468
    invoke-virtual {v0, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setMode(Ljava/lang/String;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    .line 470
    invoke-virtual {p3, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static readRestrictionsMode(Landroid/util/JsonReader;Ljava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 441
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v1, v5

    goto :goto_2

    :sswitch_0
    const-string v1, "idling_restrictions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_1
    const-string v1, "moving_restrictions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v1, "unknown_restrictions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :sswitch_3
    const-string v1, "parked_restrictions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown name parsing restriction mode json config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarUxRConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :pswitch_0
    invoke-static {p0, v3, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_0

    .line 451
    :pswitch_1
    invoke-static {p0, v2, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_0

    .line 454
    :pswitch_2
    invoke-static {p0, v5, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_0

    .line 445
    :pswitch_3
    invoke-static {p0, v4, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;ILjava/lang/String;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto :goto_0

    .line 460
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a307763 -> :sswitch_3
        -0x13241404 -> :sswitch_2
        0x3a9e9678 -> :sswitch_1
        0x6b0dac15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeRestrictionMode(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "parked_restrictions"

    .line 260
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "idling_restrictions"

    .line 263
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "moving_restrictions"

    .line 266
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x2

    .line 267
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string/jumbo v0, "unknown_restrictions"

    .line 269
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, -0x1

    .line 271
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object p2

    .line 270
    invoke-direct {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    .line 272
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private writeRestrictions(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string/jumbo v0, "req_opt"

    .line 287
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-boolean v1, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    const-string/jumbo v0, "restrictions"

    .line 288
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 289
    iget-object v0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "speed_range"

    .line 290
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 291
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "min_speed"

    .line 292
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string v0, "max_speed"

    .line 293
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object p2, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 294
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 278
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 279
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictions(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v0, "writer must not be null"

    .line 553
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Physical display port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "==========================================="

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 557
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode UXR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "-------------------------------------------"

    .line 559
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-static {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->access$1000(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/util/Map;)V

    goto :goto_0

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max String length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max Cumulative Content Items: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max Content depth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 528
    :cond_0
    instance-of v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 532
    :cond_1
    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 534
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    iget-object v3, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    if-ne v1, v3, :cond_2

    .line 535
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->hasSameParameters(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    iget-object p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    .line 536
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPhysicalPort()Ljava/lang/Byte;
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    return-object v0
.end method

.method public getUxRestrictions(IF)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    const-string v0, "baseline"

    .line 116
    invoke-virtual {p0, p1, p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getUxRestrictions(IFLjava/lang/String;)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    return-object p1
.end method

.method public getUxRestrictions(IFLjava/lang/String;)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 3

    const-string v0, "mode must not be null"

    .line 132
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    .line 136
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-static {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->findUxRestrictionsInList(FLjava/util/List;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x3

    const-string v1, "CarUxRConfig"

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    const/4 p3, 0x1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, p3

    const-string p3, "No restrictions specified for (mode: %s, drive state: %s)"

    .line 142
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    iget-object p3, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    const-string v0, "baseline"

    .line 150
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    .line 151
    invoke-virtual {p3, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object p3

    .line 148
    invoke-static {p2, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->findUxRestrictionsInList(FLjava/util/List;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_4

    .line 155
    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    if-nez p2, :cond_3

    sget-boolean p2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p2, :cond_3

    .line 159
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->createDefaultUxRestrictionsEvent()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    return-object p1

    .line 156
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No restrictions for driving state "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 157
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getDrivingStateName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 161
    :cond_4
    iget-boolean p1, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    iget p2, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    invoke-direct {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    return-object p1
.end method

.method public hasSameParameters(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z
    .locals 2

    const-string v0, "other must not be null"

    .line 543
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    iget v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    iget v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    iget p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 519
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 519
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 301
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 302
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "\t"

    .line 303
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 305
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeJson(Landroid/util/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 307
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    :goto_0
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "writer must not be null"

    .line 234
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->setLenient(Z)V

    .line 238
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 239
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    const-string v1, "physical_port"

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :goto_0
    const-string v0, "max_content_depth"

    .line 244
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "max_cumulative_content_items"

    .line 245
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "max_string_length"

    .line 247
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 249
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-direct {p0, p1, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionMode(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;)V

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 655
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    sget-object v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 659
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-virtual {v5, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    .line 663
    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz p2, :cond_3

    goto :goto_2

    .line 665
    :cond_3
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 667
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
