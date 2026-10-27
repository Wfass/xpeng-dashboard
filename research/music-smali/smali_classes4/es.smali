.class Les;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Les$a;
    }
.end annotation


# static fields
.field static final a:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/lang/Object;

.field static final c:Landroidx/collection/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/e<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lfb<",
            "Les$a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Landroidx/collection/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/d;-><init>(I)V

    sput-object v0, Les;->a:Landroidx/collection/d;

    const-string v0, "fonts-androidx"

    const/16 v1, 0xa

    const/16 v2, 0x2710

    .line 61
    invoke-static {v0, v1, v2}, Leu;->a(Ljava/lang/String;II)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Les;->d:Ljava/util/concurrent/ExecutorService;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Les;->b:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroidx/collection/e;

    invoke-direct {v0}, Landroidx/collection/e;-><init>()V

    sput-object v0, Les;->c:Landroidx/collection/e;

    return-void
.end method

.method private static a(Let$a;)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Let$a;->a()I

    move-result v0

    const/4 v1, -0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Let$a;->a()I

    move-result p0

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    const/4 p0, -0x2

    return p0

    .line 271
    :cond_1
    invoke-virtual {p0}, Let$a;->b()[Let$b;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 272
    array-length v0, p0

    if-nez v0, :cond_2

    goto :goto_2

    .line 276
    :cond_2
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    aget-object v4, p0, v3

    .line 279
    invoke-virtual {v4}, Let$b;->e()I

    move-result v4

    if-eqz v4, :cond_4

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v2
.end method

.method static a(Landroid/content/Context;Ler;ILjava/util/concurrent/Executor;Leo;)Landroid/graphics/Typeface;
    .locals 4

    .line 164
    invoke-static {p1, p2}, Les;->a(Ler;I)Ljava/lang/String;

    move-result-object v0

    .line 165
    sget-object v1, Les;->a:Landroidx/collection/d;

    invoke-virtual {v1, v0}, Landroidx/collection/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 167
    new-instance p0, Les$a;

    invoke-direct {p0, v1}, Les$a;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p4, p0}, Leo;->a(Les$a;)V

    return-object v1

    .line 171
    :cond_0
    new-instance v1, Les$2;

    invoke-direct {v1, p4}, Les$2;-><init>(Leo;)V

    .line 178
    sget-object p4, Les;->b:Ljava/lang/Object;

    monitor-enter p4

    .line 179
    :try_start_0
    sget-object v2, Les;->c:Landroidx/collection/e;

    invoke-virtual {v2, v0}, Landroidx/collection/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    monitor-exit p4

    return-object v3

    .line 186
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v1, Les;->c:Landroidx/collection/e;

    invoke-virtual {v1, v0, v2}, Landroidx/collection/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    new-instance p4, Les$3;

    invoke-direct {p4, v0, p0, p1, p2}, Les$3;-><init>(Ljava/lang/String;Landroid/content/Context;Ler;I)V

    if-nez p3, :cond_2

    .line 198
    sget-object p3, Les;->d:Ljava/util/concurrent/ExecutorService;

    .line 200
    :cond_2
    new-instance p0, Les$4;

    invoke-direct {p0, v0}, Les$4;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4, p0}, Leu;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lfb;)V

    return-object v3

    :catchall_0
    move-exception p0

    .line 189
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static a(Landroid/content/Context;Ler;Leo;II)Landroid/graphics/Typeface;
    .locals 2

    .line 102
    invoke-static {p1, p3}, Les;->a(Ler;I)Ljava/lang/String;

    move-result-object v0

    .line 103
    sget-object v1, Les;->a:Landroidx/collection/d;

    invoke-virtual {v1, v0}, Landroidx/collection/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 105
    new-instance p0, Les$a;

    invoke-direct {p0, v1}, Les$a;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, p0}, Leo;->a(Les$a;)V

    return-object v1

    :cond_0
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    .line 112
    invoke-static {v0, p0, p1, p3}, Les;->a(Ljava/lang/String;Landroid/content/Context;Ler;I)Les$a;

    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Leo;->a(Les$a;)V

    .line 114
    iget-object p0, p0, Les$a;->a:Landroid/graphics/Typeface;

    return-object p0

    .line 117
    :cond_1
    new-instance v1, Les$1;

    invoke-direct {v1, v0, p0, p1, p3}, Les$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ler;I)V

    .line 125
    :try_start_0
    sget-object p0, Les;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v1, p4}, Leu;->a(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Les$a;

    .line 130
    invoke-virtual {p2, p0}, Leo;->a(Les$a;)V

    .line 131
    iget-object p0, p0, Les$a;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 133
    :catch_0
    new-instance p0, Les$a;

    const/4 p1, -0x3

    invoke-direct {p0, p1}, Les$a;-><init>(I)V

    invoke-virtual {p2, p0}, Leo;->a(Les$a;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;Ler;I)Les$a;
    .locals 2

    .line 232
    sget-object v0, Les;->a:Landroidx/collection/d;

    invoke-virtual {v0, p0}, Landroidx/collection/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 234
    new-instance p0, Les$a;

    invoke-direct {p0, v0}, Les$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-static {p1, p2, v0}, Leq;->a(Landroid/content/Context;Ler;Landroid/os/CancellationSignal;)Let$a;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    invoke-static {p2}, Les;->a(Let$a;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    new-instance p0, Les$a;

    invoke-direct {p0, v1}, Les$a;-><init>(I)V

    return-object p0

    .line 250
    :cond_1
    invoke-virtual {p2}, Let$a;->b()[Let$b;

    move-result-object p2

    .line 249
    invoke-static {p1, v0, p2, p3}, Ldx;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Let$b;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 253
    sget-object p2, Les;->a:Landroidx/collection/d;

    invoke-virtual {p2, p0, p1}, Landroidx/collection/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance p0, Les$a;

    invoke-direct {p0, p1}, Les$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    .line 256
    :cond_2
    new-instance p0, Les$a;

    const/4 p1, -0x3

    invoke-direct {p0, p1}, Les$a;-><init>(I)V

    return-object p0

    .line 241
    :catch_0
    new-instance p0, Les$a;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Les$a;-><init>(I)V

    return-object p0
.end method

.method private static a(Ler;I)Ljava/lang/String;
    .locals 1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ler;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
