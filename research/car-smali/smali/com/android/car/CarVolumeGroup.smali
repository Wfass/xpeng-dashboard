.class final Lcom/android/car/CarVolumeGroup;
.super Ljava/lang/Object;
.source "CarVolumeGroup.java"


# instance fields
.field private final mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/CarAudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContextToBus:Landroid/util/SparseIntArray;

.field private final mContexts:[I

.field private mCurrentGainIndex:I

.field private mDefaultGain:I

.field private final mId:I

.field private mMaxGain:I

.field private mMinGain:I

.field private mStepSize:I

.field private mStoredGainIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;I[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "contexts"    # [I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    .line 50
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mDefaultGain:I

    .line 51
    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mMaxGain:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mStepSize:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    .line 59
    iput p2, p0, Lcom/android/car/CarVolumeGroup;->mId:I

    .line 60
    iput-object p3, p0, Lcom/android/car/CarVolumeGroup;->mContexts:[I

    .line 62
    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/car/CarVolumeGroup;->mId:I

    .line 63
    invoke-static {v2}, Landroid/car/media/CarAudioManager;->getVolumeSettingsKeyForGroup(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mStoredGainIndex:I

    .line 64
    return-void
.end method

.method private getGainForIndex(I)I
    .locals 2
    .param p1, "gainIndex"    # I

    .line 167
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mStepSize:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getIndexForGain(I)I
    .locals 2
    .param p1, "gainInMillibel"    # I

    .line 174
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mStepSize:I

    div-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method bind(IILcom/android/car/CarAudioDeviceInfo;)V
    .locals 2
    .param p1, "contextNumber"    # I
    .param p2, "busNumber"    # I
    .param p3, "info"    # Lcom/android/car/CarAudioDeviceInfo;

    .line 93
    iget-object v0, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioGain;->stepValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mStepSize:I

    goto :goto_1

    .line 96
    :cond_0
    nop

    .line 97
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioGain;->stepValue()I

    move-result v0

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mStepSize:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Gain controls within one group must have same step value"

    .line 96
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/android/car/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    iget-object v0, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getDefaultGain()I

    move-result v0

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mDefaultGain:I

    if-le v0, v1, :cond_2

    .line 106
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getDefaultGain()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mDefaultGain:I

    .line 108
    :cond_2
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getMaxGain()I

    move-result v0

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mMaxGain:I

    if-le v0, v1, :cond_3

    .line 109
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getMaxGain()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mMaxGain:I

    .line 111
    :cond_3
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getMinGain()I

    move-result v0

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    if-ge v0, v1, :cond_4

    .line 112
    invoke-virtual {p3}, Lcom/android/car/CarAudioDeviceInfo;->getMinGain()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    .line 114
    :cond_4
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {p0}, Lcom/android/car/CarVolumeGroup;->getMinGainIndex()I

    move-result v1

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {p0}, Lcom/android/car/CarVolumeGroup;->getMaxGainIndex()I

    move-result v1

    if-le v0, v1, :cond_5

    goto :goto_2

    .line 122
    :cond_5
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mStoredGainIndex:I

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    goto :goto_3

    .line 118
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mDefaultGain:I

    invoke-direct {p0, v0}, Lcom/android/car/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    .line 124
    :goto_3
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarVolumeGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    const-string v0, "\tGain in millibel (min / max / default/ current): %d %d %d %d\n"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/car/CarVolumeGroup;->mMaxGain:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/car/CarVolumeGroup;->mDefaultGain:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget v3, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    invoke-direct {p0, v3}, Lcom/android/car/CarVolumeGroup;->getGainForIndex(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 196
    invoke-virtual {p1, v0, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 198
    const-string v0, "\tGain in index (min / max / default / current): %d %d %d %d\n"

    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Lcom/android/car/CarVolumeGroup;->getMinGainIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/car/CarVolumeGroup;->getMaxGainIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/android/car/CarVolumeGroup;->getDefaultGainIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 198
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    move v0, v4

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    const-string v1, "\tContext: %s -> Bus: %d\n"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/car/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    .line 202
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/automotive/audiocontrol/V1_0/ContextNumber;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/car/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 201
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_0
    nop

    .local v4, "i":I
    :goto_1
    move v0, v4

    .end local v4    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarAudioDeviceInfo;

    invoke-virtual {v1, p1}, Lcom/android/car/CarAudioDeviceInfo;->dump(Ljava/io/PrintWriter;)V

    .line 204
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 208
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 209
    return-void
.end method

.method getAudioDevicePortForContext(I)Landroid/media/AudioDevicePort;
    .locals 2
    .param p1, "contextNumber"    # I

    .line 179
    iget-object v0, p0, Lcom/android/car/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 180
    .local v0, "busNumber":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarAudioDeviceInfo;

    invoke-virtual {v1}, Lcom/android/car/CarAudioDeviceInfo;->getAudioDevicePort()Landroid/media/AudioDevicePort;

    move-result-object v1

    return-object v1

    .line 181
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getBusNumbers()[I
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 76
    .local v0, "busNumbers":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method getContexts()[I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/car/CarVolumeGroup;->mContexts:[I

    return-object v0
.end method

.method getCurrentGainIndex()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    return v0
.end method

.method getDefaultGainIndex()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mDefaultGain:I

    invoke-direct {p0, v0}, Lcom/android/car/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    return v0
.end method

.method getId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mId:I

    return v0
.end method

.method getMaxGainIndex()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mMaxGain:I

    invoke-direct {p0, v0}, Lcom/android/car/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    return v0
.end method

.method getMinGainIndex()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    invoke-direct {p0, v0}, Lcom/android/car/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    return v0
.end method

.method setCurrentGainIndex(I)V
    .locals 5
    .param p1, "gainIndex"    # I

    .line 143
    invoke-direct {p0, p1}, Lcom/android/car/CarVolumeGroup;->getGainForIndex(I)I

    move-result v0

    .line 145
    .local v0, "gainInMillibels":I
    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mMaxGain:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gain out of range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/CarVolumeGroup;->mMinGain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/CarVolumeGroup;->mMaxGain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 153
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/car/CarVolumeGroup;->mBusToCarAudioDeviceInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarAudioDeviceInfo;

    .line 155
    .local v2, "info":Lcom/android/car/CarAudioDeviceInfo;
    invoke-virtual {v2, v0}, Lcom/android/car/CarAudioDeviceInfo;->setCurrentGain(I)V

    .line 153
    .end local v2    # "info":Lcom/android/car/CarAudioDeviceInfo;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_1

    .line 158
    .end local v2    # "i":I
    :cond_1
    iput p1, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    .line 159
    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/car/CarVolumeGroup;->mId:I

    .line 160
    invoke-static {v2}, Landroid/car/media/CarAudioManager;->getVolumeSettingsKeyForGroup(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarVolumeGroup id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentGainIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarVolumeGroup;->mCurrentGainIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " contexts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarVolumeGroup;->mContexts:[I

    .line 190
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " buses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/android/car/CarVolumeGroup;->getBusNumbers()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    return-object v0
.end method
