.class Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3;
.super Ljava/lang/Object;
.source "DolbyResourcePreloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 118
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->c(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    .line 119
    new-instance v3, Ljava/lang/ref/SoftReference;

    sget v4, Lbez$f;->item_dolby_zone_banner:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3$1;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$3;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
