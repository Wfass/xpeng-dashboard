.class Layh$4;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "MediaLogoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layh;->a(ILcom/xiaopeng/musicradio/bean/BaseInfo;Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/BaseInfo;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/bean/BaseInfo;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:Layh;


# direct methods
.method constructor <init>(Layh;IILcom/xiaopeng/musicradio/bean/BaseInfo;ILcom/xiaopeng/musicradio/bean/BaseInfo;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 338
    iput-object p1, p0, Layh$4;->h:Layh;

    iput-object p4, p0, Layh$4;->a:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    iput p5, p0, Layh$4;->b:I

    iput-object p6, p0, Layh$4;->c:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    iput p7, p0, Layh$4;->d:I

    iput-object p8, p0, Layh$4;->e:Ljava/lang/String;

    iput-object p9, p0, Layh$4;->f:Ljava/lang/String;

    iput p10, p0, Layh$4;->g:I

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 9

    const-string p2, "MediaLogoManager"

    const-string v0, "onResourceReady: =="

    .line 341
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Layh$4;->h:Layh;

    invoke-static {v0}, Layh;->b(Layh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lbql;->h(Ljava/lang/Runnable;)V

    .line 343
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceReady: ========= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Layh$4;->a:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    .line 347
    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    iget-object v1, p0, Layh$4;->a:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    if-eq p2, v1, :cond_1

    invoke-interface {v0}, Laqt;->d()Lcom/xiaopeng/musicradio/bean/BaseInfo;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 348
    :cond_1
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_2

    .line 349
    iget-object v0, p0, Layh$4;->h:Layh;

    iget v1, p0, Layh$4;->b:I

    iget-object v2, p0, Layh$4;->c:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Layh$4;->d:I

    iget-object v5, p0, Layh$4;->e:Ljava/lang/String;

    iget-object v6, p0, Layh$4;->f:Ljava/lang/String;

    iget v7, p0, Layh$4;->g:I

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Layh;->a(Layh;ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 350
    :cond_2
    instance-of p2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz p2, :cond_3

    .line 351
    iget-object v0, p0, Layh$4;->h:Layh;

    iget v1, p0, Layh$4;->b:I

    iget-object v2, p0, Layh$4;->c:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Layh$4;->d:I

    iget-object v5, p0, Layh$4;->e:Ljava/lang/String;

    iget-object v6, p0, Layh$4;->f:Ljava/lang/String;

    iget v7, p0, Layh$4;->g:I

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Layh;->a(Layh;ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 338
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Layh$4;->a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
