.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    }
.end annotation


# static fields
.field private static final UX_RESTRICTIONS_UNKNOWN:I = -0x1


# instance fields
.field private mMaxContentDepth:I

.field private mMaxCumulativeContentItems:I

.field private mMaxStringLength:I

.field private mPhysicalPort:Ljava/lang/Byte;

.field public final mRestrictionModes:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 3

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 699
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxContentDepth:I

    .line 700
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxCumulativeContentItems:I

    .line 701
    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxStringLength:I

    .line 703
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    .line 706
    new-instance v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-direct {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;-><init>()V

    const-string v2, "baseline"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)Ljava/lang/Byte;
    .locals 0

    .line 675
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPhysicalPort:Ljava/lang/Byte;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I
    .locals 0

    .line 675
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxContentDepth:I

    return p0
.end method

.method static synthetic access$200(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I
    .locals 0

    .line 675
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxCumulativeContentItems:I

    return p0
.end method

.method static synthetic access$300(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I
    .locals 0

    .line 675
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxStringLength:I

    return p0
.end method

.method private addDefaultRestrictionsToBaseline()V
    .locals 8

    .line 829
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    const-string v1, "baseline"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    .line 831
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$1700()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 833
    invoke-virtual {v0, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v5

    .line 834
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using default restrictions for driving state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 836
    invoke-static {v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$1800(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CarUxRConfig"

    .line 835
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v4, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    const/16 v6, 0x1ff

    const/4 v7, 0x1

    invoke-direct {v4, v7, v6}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;-><init>(ZI)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$setUxRestrictions$0(Ljava/lang/String;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;
    .locals 0

    .line 776
    new-instance p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$validateBaselineModeRestrictions$1(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)Z
    .locals 0

    .line 860
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private validateBaselineModeRestrictions()V
    .locals 8

    .line 844
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    const-string v1, "baseline"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    .line 846
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$1700()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v1, v3

    .line 848
    invoke-virtual {v0, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v6, :cond_1

    .line 852
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_0

    goto :goto_1

    .line 853
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Non-moving driving state should contain one set of restriction rules."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_3

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v6, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$mpXtv39MROh7dAz94lQpTyXDMVY;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$mpXtv39MROh7dAz94lQpTyXDMVY;

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 863
    invoke-virtual {v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 865
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Every restriction in MOVING state should contain driving state.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 871
    :cond_3
    sget-object v4, Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;

    .line 872
    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    .line 871
    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 874
    invoke-direct {p0, v5}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateRangeOfSpeed(Ljava/util/List;)V

    .line 875
    invoke-direct {p0, v5}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateContinuousSpeedRange(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private validateContinuousSpeedRange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 939
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 940
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 941
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 943
    iget-object v2, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v2

    iget-object v1, v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mis-configured speed range. Possibly speed range overlap or gap."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private validateModeRestrictions(Ljava/lang/String;)V
    .locals 1

    .line 880
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    const/4 v0, 0x2

    .line 885
    invoke-virtual {p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object p1

    .line 886
    sget-object v0, Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$QhPuT58P0RywXmOCKDnl5Xjz3DA;

    .line 887
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 886
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 889
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateContinuousSpeedRange(Ljava/util/List;)V

    return-void
.end method

.method public static validatePort(I)B
    .locals 3

    const/16 v0, -0x80

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    return p0

    .line 688
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port value should be within the range of a byte. Input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateRangeOfSpeed(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    .line 906
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 907
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object v0, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez v0, :cond_0

    return-void

    .line 914
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object v0, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 918
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 919
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 920
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Max speed of last restriction should be MAX_SPEED."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 915
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Speed range min speed should start at 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .locals 3

    .line 815
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->addDefaultRestrictionsToBaseline()V

    .line 817
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateBaselineModeRestrictions()V

    .line 818
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "baseline"

    .line 819
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    invoke-direct {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validateModeRestrictions(Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_1
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V

    return-object v0
.end method

.method public setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 806
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxContentDepth:I

    return-object p0
.end method

.method public setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 798
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxCumulativeContentItems:I

    return-object p0
.end method

.method public setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 790
    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mMaxStringLength:I

    return-object p0
.end method

.method public setPhysicalPort(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 0

    .line 718
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput-object p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPhysicalPort:Ljava/lang/Byte;

    return-object p0
.end method

.method public setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;ZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;-><init>()V

    .line 753
    invoke-virtual {v0, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p3

    .line 754
    invoke-virtual {p3, p4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p3

    .line 755
    invoke-virtual {p3, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setSpeedRange(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p2

    .line 752
    invoke-virtual {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 4

    .line 768
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$1200(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    move-result-object v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Non-moving driving state should not specify speed range."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 775
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mRestrictionModes:Ljava/util/Map;

    .line 776
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$1300(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;->INSTANCE:Landroid/car/drivingstate/-$$Lambda$CarUxRestrictionsConfiguration$Builder$_HwMxj-J88yII8kDzYrvGlzd4Yo;

    .line 775
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    .line 778
    invoke-virtual {v1, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object p1

    new-instance v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 780
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$1300(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$1400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Z

    move-result v3

    .line 781
    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->access$1500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)I

    move-result p2

    invoke-direct {v1, v2, v3, p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;-><init>(Ljava/lang/String;ZILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)V

    .line 778
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setUxRestrictions(IZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 1

    .line 728
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;-><init>()V

    .line 729
    invoke-virtual {v0, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p2

    .line 730
    invoke-virtual {p2, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p2

    .line 728
    invoke-virtual {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method
