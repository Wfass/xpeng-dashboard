.class public Lcom/xiaopeng/xiewpreload/ViewCatchPool;
.super Ljava/lang/Object;
.source "ViewCatchPool.java"

# interfaces
.implements Lcom/xiaopeng/xiewpreload/IViewPreload;


# static fields
.field private static TAG:Ljava/lang/String; = "ViewCachePool"

.field private static final WHAT_ADD_VIEW:I = 0x7d0

.field private static final WHAT_PRELOAD_TASK:I = 0x3e8


# instance fields
.field private mAsyncLayoutInflater:Laa;

.field private mBindingLayoutInflater:Landroid/view/LayoutInflater;

.field private mCacheBindingMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lip;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mPreLoadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/xiaopeng/xiewpreload/ViewCatchKey;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "viewCatchInflate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool$1;

    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xiewpreload/ViewCatchPool$1;-><init>(Lcom/xiaopeng/xiewpreload/ViewCatchPool;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWorkHandler:Landroid/os/Handler;

    .line 75
    invoke-direct {p0, p1}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->initInflater(Ljava/lang/ref/WeakReference;)V

    .line 76
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    .line 77
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCacheBindingMap:Ljava/util/concurrent/ConcurrentMap;

    .line 78
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mPreLoadQueue:Ljava/util/Queue;

    .line 80
    sget-object p1, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v0, "ViewCatchPool init"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xiewpreload/ViewCatchPool;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->preloadViews()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xiewpreload/ViewCatchPool;)Ljava/util/Queue;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mPreLoadQueue:Ljava/util/Queue;

    return-object p0
.end method

.method private checkInflaterState(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mAsyncLayoutInflater:Laa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mBindingLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->initInflater(Ljava/lang/ref/WeakReference;)V

    :cond_1
    return-void
.end method

.method private initInflater(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 133
    sget-object p1, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v0, "initInflater weakContext is null !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v2, "initInflater .."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaopeng/xiewpreload/utils/LocaleHelper;->getLocalizedContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 143
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 147
    new-instance p1, Laa;

    invoke-direct {p1, v1}, Laa;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mAsyncLayoutInflater:Laa;

    .line 148
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mBindingLayoutInflater:Landroid/view/LayoutInflater;

    .line 151
    :try_start_0
    const-class p1, Laa;

    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mAsyncLayoutInflater:Laa;

    invoke-static {}, Lcom/xiaopeng/xiewpreload/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 157
    :goto_0
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initInflater error !!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void

    .line 145
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private preloadViews()V
    .locals 8

    .line 163
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v1, "startPreLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->checkInflaterState(Ljava/lang/ref/WeakReference;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mAsyncLayoutInflater:Laa;

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v1, "preloadViews mAsyncLayoutInflater is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mPreLoadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mPreLoadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;

    if-eqz v1, :cond_0

    .line 172
    iget v2, v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    iget v3, v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "preloadViews asyncLayoutInflater is null"

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 175
    iget-object v2, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    iget v6, v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 177
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v1, "preloadViews views is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 180
    :cond_1
    :goto_0
    iget v6, v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->nums:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    if-eqz v0, :cond_3

    .line 181
    iget-object v6, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mAsyncLayoutInflater:Laa;

    if-nez v6, :cond_2

    goto :goto_1

    .line 185
    :cond_2
    iget v6, v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    new-instance v7, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;

    invoke-direct {v7, p0, v2, v1}, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;-><init>(Lcom/xiaopeng/xiewpreload/ViewCatchPool;Ljava/util/ArrayList;Lcom/xiaopeng/xiewpreload/ViewCatchKey;)V

    invoke-virtual {v0, v6, v3, v7}, Laa;->a(ILandroid/view/ViewGroup;Laa$d;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 182
    :cond_3
    :goto_1
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    :goto_2
    iget v6, v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->nums:I

    if-ge v5, v6, :cond_0

    if-eqz v0, :cond_6

    .line 196
    iget-object v6, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mAsyncLayoutInflater:Laa;

    if-nez v6, :cond_5

    goto :goto_3

    .line 200
    :cond_5
    iget v6, v1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    new-instance v7, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$W3XZP0RkUVJMvo3PsaNFxRsGVBo;

    invoke-direct {v7, p0, v2, v1}, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$W3XZP0RkUVJMvo3PsaNFxRsGVBo;-><init>(Lcom/xiaopeng/xiewpreload/ViewCatchPool;Ljava/util/ArrayList;Lcom/xiaopeng/xiewpreload/ViewCatchKey;)V

    invoke-virtual {v0, v6, v3, v7}, Laa;->a(ILandroid/view/ViewGroup;Laa$d;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 197
    :cond_6
    :goto_3
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 212
    :cond_7
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v1, "endPreLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addPreLoadXml(II)V
    .locals 3

    .line 85
    new-instance v0, Lcom/xiaopeng/xiewpreload/ViewCatchKey;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xiewpreload/ViewCatchKey;-><init>(II)V

    .line 86
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x7d0

    .line 87
    iput v2, v1, Landroid/os/Message;->what:I

    .line 88
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreLoadXml resId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "viewNums:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cachePreLoadBinding(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lip;",
            ">;)V"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachePreLoadBinding resId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bindingNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCacheBindingMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearPool()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mPreLoadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public getBindingFromPool(I)Lip;
    .locals 8

    .line 222
    const-class v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCacheBindingMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCacheBindingMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 225
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lip;

    .line 227
    invoke-interface {v2}, Lip;->f()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 228
    invoke-interface {v2}, Lip;->f()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->VIEW_TAG_KEY:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 229
    iget-object v4, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    sget-object v5, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBindingFromPool resId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " view = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lip;->f()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " resourceName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " visibility:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lip;->f()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v4, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->VIEW_TAG_NONE:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    const-string v4, "view_tag_detached"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    :cond_1
    invoke-interface {v2}, Lip;->f()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    monitor-exit v0

    return-object v2

    :cond_2
    const/4 p1, 0x0

    .line 239
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mBindingLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getViewFromPool(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->getViewFromPool(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewFromPool(IZ)Landroid/view/View;
    .locals 9

    .line 245
    const-class v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 248
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 249
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 250
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 251
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 252
    sget v4, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->VIEW_TAG_KEY:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 253
    iget-object v5, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    sget-object v6, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getViewFromPool resId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " view = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "tag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " resourceName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v5, Lcom/xiaopeng/xiewpreload/ViewPreloadManager;->VIEW_TAG_NONE:Ljava/lang/String;

    if-eq v4, v5, :cond_0

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/String;

    const-string v5, "view_tag_detached"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 258
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    :cond_1
    monitor-exit v0

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    sget-object p1, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string p2, "getViewFromPool null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 266
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isInPreloadPool(ILandroid/view/View;)Z
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 278
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 279
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public synthetic lambda$preloadViews$0$ViewCatchPool(Ljava/util/ArrayList;Lcom/xiaopeng/xiewpreload/ViewCatchKey;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 188
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 190
    sget-object p2, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "startPreLoad contains inflate resId = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " view = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$preloadViews$1$ViewCatchPool(Ljava/util/ArrayList;Lcom/xiaopeng/xiewpreload/ViewCatchKey;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 2

    .line 201
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object p4, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget p5, p2, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p4

    .line 203
    sget-object p5, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreLoad inflate resId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " view = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget p3, p2, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->nums:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ne p3, p4, :cond_0

    .line 205
    iget-object p3, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    iget p2, p2, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public reloadByLanguageChange()V
    .locals 2

    .line 298
    sget-object v0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->TAG:Ljava/lang/String;

    const-string v1, " reloadByLanguageChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCatchPoolMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mPreLoadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mAsyncLayoutInflater:Laa;

    .line 303
    iput-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mBindingLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public resetViewTagForBinding(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mCacheBindingMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startPreLoad()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
