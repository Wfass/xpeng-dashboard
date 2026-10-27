.class public Lcom/android/car/condition/CarConditionStatus;
.super Ljava/lang/Object;
.source "CarConditionStatus.java"


# instance fields
.field private final carConditionInfo:Landroid/car/hardware/condition/CarConditionInfo;

.field private limitIndex:Landroid/util/SparseIntArray;

.field private final processName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/car/hardware/condition/CarConditionInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/car/hardware/condition/CarConditionInfo;
    .param p2, "name"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/condition/CarConditionStatus;->limitIndex:Landroid/util/SparseIntArray;

    .line 13
    iput-object p1, p0, Lcom/android/car/condition/CarConditionStatus;->carConditionInfo:Landroid/car/hardware/condition/CarConditionInfo;

    .line 14
    iput-object p2, p0, Lcom/android/car/condition/CarConditionStatus;->processName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static createFromCarConditionInfo(Landroid/car/hardware/condition/CarConditionInfo;Ljava/lang/String;)Lcom/android/car/condition/CarConditionStatus;
    .locals 1
    .param p0, "conditionInfo"    # Landroid/car/hardware/condition/CarConditionInfo;
    .param p1, "processName"    # Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/android/car/condition/CarConditionStatus;

    invoke-direct {v0, p0, p1}, Lcom/android/car/condition/CarConditionStatus;-><init>(Landroid/car/hardware/condition/CarConditionInfo;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCarConditionInfo()Landroid/car/hardware/condition/CarConditionInfo;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/car/condition/CarConditionStatus;->carConditionInfo:Landroid/car/hardware/condition/CarConditionInfo;

    return-object v0
.end method

.method public getLimitIndex(I)I
    .locals 2
    .param p1, "propId"    # I

    .line 27
    iget-object v0, p0, Lcom/android/car/condition/CarConditionStatus;->limitIndex:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/car/condition/CarConditionStatus;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public setLimitIndex(II)V
    .locals 1
    .param p1, "propId"    # I
    .param p2, "indexLimit"    # I

    .line 31
    iget-object v0, p0, Lcom/android/car/condition/CarConditionStatus;->limitIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "CarConditionStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/condition/CarConditionStatus;->carConditionInfo:Landroid/car/hardware/condition/CarConditionInfo;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/android/car/condition/CarConditionStatus;->limitIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 44
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 45
    iget-object v3, p0, Lcom/android/car/condition/CarConditionStatus;->limitIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 46
    .local v3, "key":I
    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " limitIndex: "

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/condition/CarConditionStatus;->limitIndex:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .end local v3    # "key":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "i":I
    :cond_0
    const-string v2, "      \t}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
