.class public Lahu;
.super Ljava/lang/Object;
.source "LocalImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahu$a;
    }
.end annotation


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static c:Lahu;


# instance fields
.field private final d:I

.field private final e:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Laht;",
            "Ljava/util/HashSet<",
            "Ljava/util/function/BiConsumer<",
            "Laht;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Laht;",
            "Lahu$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Laht;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LocalImageFetcher"

    const/4 v1, 0x5

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lahu;->a:Z

    const/4 v1, 0x3

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lahu;->b:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lahu;->f:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lahu;->g:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    sget v1, Lcom/android/car/apps/common/h$g;->image_fetcher_thread_pools_max_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 95
    sget v2, Lcom/android/car/apps/common/h$g;->image_fetcher_thread_pool_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lahu;->d:I

    .line 96
    new-instance v2, Landroid/util/LruCache;

    invoke-direct {v2, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lahu;->e:Landroid/util/LruCache;

    .line 98
    sget v1, Lcom/android/car/apps/common/h$g;->bitmap_memory_cache_max_size_mb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 99
    sget v2, Lcom/android/car/apps/common/h$g;->drawable_default_weight_kb:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 100
    new-instance v2, Lahu$1;

    const/high16 v3, 0x100000

    mul-int/2addr v1, v3

    invoke-direct {v2, p0, v1, v0}, Lahu$1;-><init>(Lahu;II)V

    iput-object v2, p0, Lahu;->h:Landroid/util/LruCache;

    .line 113
    invoke-static {p1}, Lcom/android/car/apps/common/c;->a(Landroid/content/Context;)Lcom/android/car/apps/common/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/car/apps/common/c;->a()Z

    move-result p1

    iput-boolean p1, p0, Lahu;->i:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lahu;
    .locals 1

    .line 73
    sget-object v0, Lahu;->c:Lahu;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lahu;

    invoke-direct {v0, p0}, Lahu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lahu;->c:Lahu;

    .line 76
    :cond_0
    sget-object p0, Lahu;->c:Lahu;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 2

    .line 117
    iget-object v0, p0, Lahu;->e:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 119
    iget v0, p0, Lahu;->d:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lahu;->e:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private a(Lahu$a;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 192
    invoke-static {p1}, Lahu$a;->a(Lahu$a;)Laht;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lahu;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lahu$a;

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_0

    .line 196
    iget-object p1, p0, Lahu;->h:Landroid/util/LruCache;

    invoke-virtual {p1, v0, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    iget-object p1, p0, Lahu;->f:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    .line 200
    iget-object v1, p0, Lahu;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/BiConsumer;

    .line 203
    invoke-interface {v1, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_1
    sget-boolean p2, Lahu;->a:Z

    if-eqz p2, :cond_2

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A new task already started for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lahu$a;->a(Lahu$a;)Laht;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalImageFetcher"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic a(Lahu;Lahu$a;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lahu;->a(Lahu$a;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 59
    sget-boolean v0, Lahu;->b:Z

    return v0
.end method

.method static synthetic b()Lahu;
    .locals 1

    .line 59
    sget-object v0, Lahu;->c:Lahu;

    return-object v0
.end method


# virtual methods
.method public a(Laht;Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laht;",
            "Ljava/util/function/BiConsumer<",
            "Laht;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lahu;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    const-string v1, "LocalImageFetcher"

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 167
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lahu;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lahu;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahu$a;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v0, v2}, Lahu$a;->cancel(Z)Z

    .line 173
    sget-boolean v0, Lahu;->b:Z

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceled task "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Laht;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_0
    sget-boolean v0, Lahu;->a:Z

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelRequest missing task for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 181
    sget-boolean p2, Lahu;->a:Z

    if-eqz p2, :cond_3

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelRequest missing consumer for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :cond_2
    sget-boolean p2, Lahu;->a:Z

    if-eqz p2, :cond_3

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelRequest has no consumers for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Laht;Ljava/util/function/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laht;",
            "Ljava/util/function/BiConsumer<",
            "Laht;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lahu;->h:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {p3, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lahu;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahu$a;

    .line 136
    iget-object v1, p0, Lahu;->f:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    const-string v2, "LocalImageFetcher"

    if-nez v1, :cond_2

    .line 138
    new-instance v1, Ljava/util/HashSet;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v0, :cond_1

    .line 139
    sget-boolean v3, Lahu;->a:Z

    if-eqz v3, :cond_1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected no task here for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    iget-object v3, p0, Lahu;->f:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2
    invoke-virtual {v1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_4

    .line 147
    iget-object p3, p2, Laht;->a:Landroid/net/Uri;

    invoke-static {p1, p3}, Lcom/android/car/apps/common/i;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 149
    new-instance v0, Lahu$a;

    iget-boolean v1, p0, Lahu;->i:Z

    invoke-direct {v0, p1, p2, v1}, Lahu$a;-><init>(Landroid/content/Context;Laht;Z)V

    .line 150
    iget-object p1, p0, Lahu;->g:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-direct {p0, p3}, Lahu;->a(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p3}, Lahu$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    sget-boolean p1, Lahu;->b:Z

    if-eqz p1, :cond_4

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Added task "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Laht;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No package for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Laht;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
