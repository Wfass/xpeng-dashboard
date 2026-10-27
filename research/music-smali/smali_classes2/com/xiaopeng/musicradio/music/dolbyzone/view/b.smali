.class public Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;
.super Lcom/xiaopeng/musicradio/utils/bg;
.source "DolbyResourcePreloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/xiaopeng/musicradio/commonui/base/b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/utils/bg;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->c:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->d:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/commonui/base/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->e:Lcom/xiaopeng/musicradio/commonui/base/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$a;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 61
    sget v0, Lbez$f;->item_dolby_zone_single_song:I

    if-ne p1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a:Ljava/util/List;

    return-object p1

    .line 63
    :cond_0
    sget v0, Lbez$f;->item_search_roundrect_layout:I

    if-ne p1, v0, :cond_1

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b:Ljava/util/List;

    return-object p1

    .line 65
    :cond_1
    sget v0, Lbez$f;->item_dolby_zone_banner:I

    if-ne p1, v0, :cond_2

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->c:Ljava/util/List;

    return-object p1

    .line 67
    :cond_2
    sget v0, Lbez$f;->item_dolby_zone_banner_full:I

    if-ne p1, v0, :cond_3

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->d:Ljava/util/List;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 153
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()V
    .locals 2

    const-string v0, "DolbyResourcePreloadUtil"

    const-string v1, "loadDolbyZoneView: "

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 76
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 94
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$2;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 113
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$4;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
