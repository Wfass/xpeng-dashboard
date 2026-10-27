.class public Lcom/xiaopeng/appstore/storeprovider/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;
    }
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;->access$000(Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;->access$000(Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 21
    :goto_0
    return-void
.end method

.method private createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    nop

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
