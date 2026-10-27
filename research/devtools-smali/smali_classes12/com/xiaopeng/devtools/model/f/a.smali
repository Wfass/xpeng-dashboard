.class public Lcom/xiaopeng/devtools/model/f/a;
.super Ljava/lang/Object;
.source "FmPerformanceModel.java"


# static fields
.field private static volatile tU:Lcom/xiaopeng/devtools/model/f/a;


# instance fields
.field private mFmState:Ljava/lang/String;

.field private mFmStrength:Ljava/lang/String;

.field private tV:Ljava/text/DecimalFormat;

.field private tW:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/a;->tW:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/a;->mFmState:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/a;->mFmStrength:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/a;->tV:Ljava/text/DecimalFormat;

    .line 17
    return-void
.end method

.method public static hf()Lcom/xiaopeng/devtools/model/f/a;
    .locals 2

    .line 45
    sget-object v0, Lcom/xiaopeng/devtools/model/f/a;->tU:Lcom/xiaopeng/devtools/model/f/a;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/xiaopeng/devtools/model/f/a;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/xiaopeng/devtools/model/f/a;->tU:Lcom/xiaopeng/devtools/model/f/a;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/xiaopeng/devtools/model/f/a;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/f/a;-><init>()V

    sput-object v1, Lcom/xiaopeng/devtools/model/f/a;->tU:Lcom/xiaopeng/devtools/model/f/a;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/devtools/model/f/a;->tU:Lcom/xiaopeng/devtools/model/f/a;

    return-object v0
.end method


# virtual methods
.method public getFrequency()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/a;->tW:Ljava/lang/String;

    return-object v0
.end method

.method public hg()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/a;->mFmState:Ljava/lang/String;

    return-object v0
.end method

.method public hh()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/a;->mFmStrength:Ljava/lang/String;

    return-object v0
.end method
