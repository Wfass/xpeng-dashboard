.class final Landroid/provider/Settings$GenerationTracker;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenerationTracker"
.end annotation


# instance fields
.field private final mArray:Landroid/util/MemoryIntArray;

.field private mCurrentGeneration:I

.field private final mErrorHandler:Ljava/lang/Runnable;

.field private final mIndex:I


# direct methods
.method public constructor <init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V
    .locals 0

    .line 2735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2736
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    .line 2737
    iput p2, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    .line 2738
    iput-object p4, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    .line 2739
    iput p3, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    return-void
.end method

.method private readCurrentGeneration()I
    .locals 3

    .line 2759
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MemoryIntArray;->get(I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Settings"

    const-string v2, "Error getting current generation"

    .line 2761
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2762
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2763
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 2771
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-virtual {v0}, Landroid/util/MemoryIntArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Settings"

    const-string v2, "Error closing backing array"

    .line 2773
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2774
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2775
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCurrentGeneration()I
    .locals 1

    .line 2754
    iget v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    return v0
.end method

.method public isGenerationChanged()Z
    .locals 2

    .line 2743
    invoke-direct {p0}, Landroid/provider/Settings$GenerationTracker;->readCurrentGeneration()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2745
    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2748
    :cond_0
    iput v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
