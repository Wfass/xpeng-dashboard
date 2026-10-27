.class public Lcom/xiaopeng/musicradio/common/l;
.super Ljava/lang/Object;
.source "ResourcePreloadMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/common/l$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->b:Ljava/util/Map;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/l;->c()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/common/l;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/musicradio/common/l$a;->a:Lcom/xiaopeng/musicradio/common/l;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/common/l;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/common/l;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/musicradio/common/l;->b:Ljava/util/Map;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->bg_btn_love_selector:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->bg_btn_love_selector:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_round:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->bg_common_radio_item:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_playall:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_btn_stop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->album_play_icon_mask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->album_play_icon_selector:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_nr_play:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->ic_nr_pause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->a:Ljava/util/List;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->category_default:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/l;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/common/l$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/common/l$1;-><init>(Lcom/xiaopeng/musicradio/common/l;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method
