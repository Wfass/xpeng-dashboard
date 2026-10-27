.class Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->run()V
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


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const-string v0, "ImageLoader"

    const-string v1, "loadGameImage onLoadFailed"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;

    iget v1, v1, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$defaultId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
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

    .line 58
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-Landroid/graphics/Bitmap;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 54
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/util/ImageLoader$2$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
