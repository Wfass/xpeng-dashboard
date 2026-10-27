.class public Lcom/xiaopeng/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/BitmapManager$BitmapLruCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static volatile instance:Lcom/xiaopeng/BitmapManager;


# instance fields
.field private bitmapIds:[I

.field private mBitmapLruCache:Lcom/xiaopeng/BitmapManager$BitmapLruCache;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/xiaopeng/BitmapManager;->bitmapIds:[I

    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 22
    div-int/lit8 v0, v0, 0x8

    .line 23
    new-instance v1, Lcom/xiaopeng/BitmapManager$BitmapLruCache;

    invoke-direct {v1, v0}, Lcom/xiaopeng/BitmapManager$BitmapLruCache;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/BitmapManager;->mBitmapLruCache:Lcom/xiaopeng/BitmapManager$BitmapLruCache;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080294
        0x7f080299
        0x7f08029b
        0x7f08029d
        0x7f08029f
        0x7f080099
    .end array-data
.end method

.method public static getInstance()Lcom/xiaopeng/BitmapManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/xiaopeng/BitmapManager;->instance:Lcom/xiaopeng/BitmapManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/xiaopeng/BitmapManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/xiaopeng/BitmapManager;->instance:Lcom/xiaopeng/BitmapManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/xiaopeng/BitmapManager;

    invoke-direct {v1}, Lcom/xiaopeng/BitmapManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/BitmapManager;->instance:Lcom/xiaopeng/BitmapManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/BitmapManager;->instance:Lcom/xiaopeng/BitmapManager;

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/BitmapManager;->mBitmapLruCache:Lcom/xiaopeng/BitmapManager$BitmapLruCache;

    invoke-virtual {v0}, Lcom/xiaopeng/BitmapManager$BitmapLruCache;->evictAll()V

    return-void
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/BitmapManager;->mBitmapLruCache:Lcom/xiaopeng/BitmapManager$BitmapLruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/BitmapManager$BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have cache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BitmapManager"

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaopeng/BitmapManager;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 61
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public synthetic lambda$preFetchBitmap$0$BitmapManager()V
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/BitmapManager;->bitmapIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 40
    iget-object v4, p0, Lcom/xiaopeng/BitmapManager;->mBitmapLruCache:Lcom/xiaopeng/BitmapManager$BitmapLruCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/BitmapManager$BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preFetchBitmap bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BitmapManager"

    invoke-static {v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preFetchBitmap()V
    .locals 1

    .line 38
    new-instance v0, Lcom/xiaopeng/-$$Lambda$BitmapManager$lDw6eLESHUFEwEO6F89ICEa1LsI;

    invoke-direct {v0, p0}, Lcom/xiaopeng/-$$Lambda$BitmapManager$lDw6eLESHUFEwEO6F89ICEa1LsI;-><init>(Lcom/xiaopeng/BitmapManager;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
