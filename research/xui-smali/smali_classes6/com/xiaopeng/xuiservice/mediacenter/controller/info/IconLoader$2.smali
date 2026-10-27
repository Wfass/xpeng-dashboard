.class Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "IconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 145
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 149
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const-string v0, "IconLoader"

    const-string v1, "onLoadFailed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-Landroid/graphics/Bitmap;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 136
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->access$100()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->access$200()Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader;->access$200()Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;->onBitmapLoaded(Landroid/graphics/Bitmap;)V

    .line 140
    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 131
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
