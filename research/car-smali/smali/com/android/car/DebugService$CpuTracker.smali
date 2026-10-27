.class final Lcom/android/car/DebugService$CpuTracker;
.super Lcom/android/internal/os/ProcessCpuTracker;
.source "DebugService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/DebugService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CpuTracker"
.end annotation


# instance fields
.field public final CanvasWidth:I

.field public final dataLength:I

.field private mCpuC0Freq:[F

.field private mCpuC0MaxFreq:J

.field private mCpuC1Freq:[F

.field private mCpuC1MaxFreq:J

.field mCpuFreqText:Ljava/lang/String;

.field mCpuFreqWidth:I

.field private mCpuTempData:[F

.field mCpuTempText:Ljava/lang/String;

.field mCpuTempWidth:I

.field private mCurCpuC0Freq:J

.field private mCurCpuC1Freq:J

.field private mCurCpuTemp:J

.field mLoadText:Ljava/lang/String;

.field mLoadWidth:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 126
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/car/DebugService$CpuTracker;->dataLength:I

    .line 127
    const/16 v2, 0x640

    iput v2, p0, Lcom/android/car/DebugService$CpuTracker;->CanvasWidth:I

    .line 129
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    .line 132
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    .line 134
    const-wide/32 v2, 0x185100

    iput-wide v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0MaxFreq:J

    .line 136
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    .line 138
    const-wide/32 v2, 0x1f5900

    iput-wide v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1MaxFreq:J

    .line 142
    iput-object p1, p0, Lcom/android/car/DebugService$CpuTracker;->mPaint:Landroid/graphics/Paint;

    .line 143
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 144
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    iget-object v3, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    iget-object v4, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    int-to-float v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    aput v5, v4, v0

    aput v5, v3, v0

    aput v5, v2, v0

    goto :goto_1

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    const/high16 v3, 0x42c80000    # 100.0f

    aput v3, v2, v0

    .line 148
    iget-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    const/high16 v3, 0x43520000    # 210.0f

    aput v3, v2, v0

    .line 149
    iget-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    const/high16 v3, 0x43a00000    # 320.0f

    aput v3, v2, v0

    .line 143
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/DebugService$CpuTracker;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/car/DebugService$CpuTracker;

    .line 114
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/DebugService$CpuTracker;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/car/DebugService$CpuTracker;

    .line 114
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/DebugService$CpuTracker;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/car/DebugService$CpuTracker;

    .line 114
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    return-object v0
.end method


# virtual methods
.method public onCpuFreqChanged([J)V
    .locals 8
    .param p1, "cpuFreq"    # [J

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const-string v4, "offline"

    goto :goto_1

    :cond_0
    aget-wide v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuFreqText:Ljava/lang/String;

    .line 175
    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCurCpuC0Freq:J

    .line 176
    const/4 v1, 0x2

    aget-wide v1, p1, v1

    iput-wide v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCurCpuC1Freq:J

    .line 177
    const/16 v1, 0x640

    iput v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuFreqWidth:I

    .line 178
    return-void
.end method

.method public onCpuTempChanged(J)V
    .locals 2
    .param p1, "cpuTemp"    # J

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpu temp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempText:Ljava/lang/String;

    .line 164
    iput-wide p1, p0, Lcom/android/car/DebugService$CpuTracker;->mCurCpuTemp:J

    .line 165
    const/16 v0, 0x640

    iput v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempWidth:I

    .line 166
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 2
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mLoadText:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mLoadText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/car/DebugService$CpuTracker;->mLoadWidth:I

    .line 159
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public update()V
    .locals 7

    .line 187
    invoke-super {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_1

    .line 189
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    iget-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 191
    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    iget-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 192
    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    iget-object v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuTempData:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-wide v2, p0, Lcom/android/car/DebugService$CpuTracker;->mCurCpuTemp:J

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float v2, v3, v2

    aput v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0Freq:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x43520000    # 210.0f

    iget-wide v4, p0, Lcom/android/car/DebugService$CpuTracker;->mCurCpuC0Freq:J

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC0MaxFreq:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    .line 197
    iget-object v0, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    iget-object v1, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1Freq:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/high16 v2, 0x43a00000    # 320.0f

    iget-wide v4, p0, Lcom/android/car/DebugService$CpuTracker;->mCurCpuC1Freq:J

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/car/DebugService$CpuTracker;->mCpuC1MaxFreq:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 198
    return-void
.end method
