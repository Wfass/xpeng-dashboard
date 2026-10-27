.class Lcom/xiaopeng/musicradio/common/l$1;
.super Ljava/lang/Object;
.source "ResourcePreloadMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/common/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/common/l;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/common/l;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/musicradio/common/l$1;->a:Lcom/xiaopeng/musicradio/common/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/common/l$1;->a:Lcom/xiaopeng/musicradio/common/l;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/common/l;->a(Lcom/xiaopeng/musicradio/common/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/common/l$1;->a:Lcom/xiaopeng/musicradio/common/l;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/common/l;->a(Lcom/xiaopeng/musicradio/common/l;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/xiaopeng/musicradio/common/l$1;->a:Lcom/xiaopeng/musicradio/common/l;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/common/l;->b(Lcom/xiaopeng/musicradio/common/l;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/common/l$1;->a:Lcom/xiaopeng/musicradio/common/l;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/common/l;->a(Lcom/xiaopeng/musicradio/common/l;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
