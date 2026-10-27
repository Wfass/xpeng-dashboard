.class public Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;
.super Ljava/lang/Object;
.source "XpDisplayManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XpDisplayManager"

.field private static sInstance:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;


# instance fields
.field final mCentralIntervals:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->mCentralIntervals:[I

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->initCentralIntervals()V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;
    .locals 2

    .line 16
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    return-object v0
.end method

.method private initCentralIntervals()V
    .locals 4

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->mCentralIntervals:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->mCentralIntervals:[I

    sget v2, Lcom/xiaopeng/xuiservice/xapp/Config;->BRIGHTNESS_TO_MAX_VALUE:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x42c60000    # 99.0f

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getRealBrightnessByUI(I)I
    .locals 2
    .param p1, "uiProgress"    # I

    .line 39
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 40
    sget v0, Lcom/xiaopeng/xuiservice/xapp/Config;->BRIGHTNESS_TO_MAX_VALUE:I

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    .line 43
    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->mCentralIntervals:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getUIProgressByReal(I)I
    .locals 3
    .param p1, "realBrightness"    # I

    .line 49
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 50
    return v0

    .line 52
    :cond_0
    sget v1, Lcom/xiaopeng/xuiservice/xapp/Config;->BRIGHTNESS_TO_MAX_VALUE:I

    const/16 v2, 0x64

    if-lt p1, v1, :cond_1

    .line 53
    return v2

    .line 55
    :cond_1
    nop

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->mCentralIntervals:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->mCentralIntervals:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_2

    .line 57
    return v0

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    :cond_3
    return v2
.end method
