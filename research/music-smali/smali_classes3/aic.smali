.class public Laic;
.super Ljava/lang/Object;
.source "MediaItemsRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laic$c;,
        Laic$a;,
        Laic$b;
    }
.end annotation


# static fields
.field private static a:[Laic;


# instance fields
.field private b:Lcom/android/car/media/common/source/a$b;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/car/media/common/source/b;",
            "Laic$c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Laic$b;

.field private final f:Laic$b;

.field private g:Ljava/lang/String;

.field private final h:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

.field private final i:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 60
    new-array v0, v0, [Laic;

    sput-object v0, Laic;->a:[Laic;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/car/media/common/source/a$b;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laic;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Lahz;->a(Ljava/lang/Object;)Landroidx/lifecycle/r;

    move-result-object v1

    iput-object v1, p0, Laic;->d:Landroidx/lifecycle/r;

    .line 120
    new-instance v1, Laic$b;

    invoke-direct {v1, v0}, Laic$b;-><init>(Laic$1;)V

    iput-object v1, p0, Laic;->e:Laic$b;

    .line 121
    new-instance v1, Laic$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Laic$b;-><init>(ZLaic$1;)V

    iput-object v1, p0, Laic;->f:Laic$b;

    .line 266
    new-instance v0, Laic$1;

    invoke-direct {v0, p0}, Laic$1;-><init>(Laic;)V

    iput-object v0, p0, Laic;->h:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 295
    new-instance v0, Laic$2;

    invoke-direct {v0, p0}, Laic$2;-><init>(Laic;)V

    iput-object v0, p0, Laic;->i:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    .line 127
    new-instance v0, L-$$Lambda$aic$SO1zFt7klot5KqAf19YK-yvO020;

    invoke-direct {v0, p0}, L-$$Lambda$aic$SO1zFt7klot5KqAf19YK-yvO020;-><init>(Laic;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public static a(Landroid/app/Application;I)Laic;
    .locals 2

    .line 64
    sget-object v0, Laic;->a:[Laic;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Laic;

    .line 66
    invoke-static {p0, p1}, Lcom/android/car/media/common/source/d;->a(Landroid/app/Application;I)Lcom/android/car/media/common/source/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/car/media/common/source/d;->c()Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-direct {v1, p0}, Laic;-><init>(Landroidx/lifecycle/LiveData;)V

    aput-object v1, v0, p1

    .line 68
    :cond_0
    sget-object p0, Laic;->a:[Laic;

    aget-object p0, p0, p1

    return-object p0
.end method

.method static synthetic a(Laic;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Laic;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Laic;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Laic;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Laic;Ljava/util/List;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Laic;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/android/car/media/common/source/a$b;)V
    .locals 2

    .line 189
    iput-object p1, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    .line 190
    iget-object p1, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    const-string v0, "MediaItemsRepository"

    if-nez p1, :cond_0

    const-string p1, "Null browsing state (no media source!)"

    .line 191
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Laic;->d:Landroidx/lifecycle/r;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/r;->b(Ljava/lang/Object;)V

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaBrowsingStateChanged: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    iget-object v1, v1, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object p1, Laic$3;->a:[I

    iget-object v0, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    iget-object v0, v0, Lcom/android/car/media/common/source/a$b;->c:Lcom/android/car/media/common/source/a$d;

    invoke-virtual {v0}, Lcom/android/car/media/common/source/a$d;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct {p0}, Laic;->d()Laic$c;

    move-result-object p1

    iget-object p1, p1, Laic$c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laic;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 214
    invoke-direct {p0}, Laic;->b()V

    .line 215
    invoke-direct {p0}, Laic;->f()V

    goto :goto_0

    .line 206
    :cond_2
    invoke-direct {p0}, Laic;->e()V

    .line 207
    invoke-direct {p0}, Laic;->b()V

    .line 208
    invoke-direct {p0}, Laic;->f()V

    goto :goto_0

    .line 201
    :cond_3
    iget-object p1, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    iget-object p1, p1, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->getRoot()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-direct {p0}, Laic;->d()Laic$c;

    move-result-object v0

    iput-object p1, v0, Laic$c;->a:Ljava/lang/String;

    .line 203
    invoke-virtual {p0, p1}, Laic;->a(Ljava/lang/String;)Laic$b;

    goto :goto_0

    .line 198
    :cond_4
    iget-object p1, p0, Laic;->e:Laic$b;

    invoke-static {p1}, Laic$b;->a(Laic$b;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;)V"
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Laic;->d()Laic$c;

    move-result-object v0

    .line 244
    iget-object v1, v0, Laic$c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic$a;

    if-nez v1, :cond_1

    const/4 p2, 0x5

    const-string v0, "MediaItemsRepository"

    .line 246
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Browse parent not in the cache: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v2, v1, Laic$a;->c:Ljava/util/List;

    .line 253
    iput-object p2, v1, Laic$a;->c:Ljava/util/List;

    .line 254
    iget-object v1, v1, Laic$a;->b:Laic$b;

    invoke-static {v1, v2, p2}, Laic$b;->a(Laic$b;Ljava/util/List;Ljava/util/List;)V

    .line 256
    iget-object v0, v0, Laic$c;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, p0, Laic;->e:Laic$b;

    invoke-static {p1, v2, p2}, Laic$b;->a(Laic$b;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/media/common/MediaItemMetadata;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Laic;->f:Laic$b;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Laic$b;->a(Laic$b;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 181
    iget-object v0, p0, Laic;->f:Laic$b;

    invoke-static {v0}, Laic$b;->b(Laic$b;)V

    return-void
.end method

.method private c()Lcom/android/car/media/common/source/b;
    .locals 1

    .line 185
    iget-object v0, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/car/media/common/source/a$b;->a:Lcom/android/car/media/common/source/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private d()Laic$c;
    .locals 3

    .line 220
    iget-object v0, p0, Laic;->c:Ljava/util/Map;

    invoke-direct {p0}, Laic;->c()Lcom/android/car/media/common/source/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic$c;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Laic$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laic$c;-><init>(Laic$1;)V

    .line 223
    iget-object v1, p0, Laic;->c:Ljava/util/Map;

    invoke-direct {p0}, Laic;->c()Lcom/android/car/media/common/source/b;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private e()V
    .locals 3

    .line 230
    invoke-direct {p0}, Laic;->d()Laic$c;

    move-result-object v0

    .line 231
    iget-object v0, v0, Laic$c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    iget-object v2, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    iget-object v2, v2, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 238
    invoke-direct {p0}, Laic;->d()Laic$c;

    move-result-object v0

    .line 239
    iget-object v0, v0, Laic$c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static synthetic lambda$SO1zFt7klot5KqAf19YK-yvO020(Laic;Lcom/android/car/media/common/source/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Laic;->a(Lcom/android/car/media/common/source/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Laic$b;
    .locals 1

    .line 142
    iget-object v0, p0, Laic;->e:Laic$b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Laic$b;
    .locals 3

    .line 155
    invoke-direct {p0}, Laic;->d()Laic$c;

    move-result-object v0

    .line 156
    iget-object v1, v0, Laic$c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic$a;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Laic$a;

    invoke-direct {v1, p1}, Laic$a;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v0, v0, Laic$c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    iget-object v0, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    iget-object v0, v0, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat;->unsubscribe(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Laic;->b:Lcom/android/car/media/common/source/a$b;

    iget-object v0, v0, Lcom/android/car/media/common/source/a$b;->b:Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v2, p0, Laic;->h:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat;->subscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    .line 166
    iget-object p1, v1, Laic$a;->b:Laic$b;

    return-object p1
.end method
