.class final Lbxo$3;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxo;->a(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XFrameLayout;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/xui/widget/XImageView;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/xui/widget/XFrameLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XImageView;ILcom/xiaopeng/xui/widget/XFrameLayout;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lbxo$3;->a:Lcom/xiaopeng/xui/widget/XImageView;

    iput p2, p0, Lbxo$3;->b:I

    iput-object p3, p0, Lbxo$3;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 216
    iget-object p2, p0, Lbxo$3;->a:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 217
    iget-object p2, p0, Lbxo$3;->a:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-static {}, Lcom/xiaopeng/musicradio/common/l;->a()Lcom/xiaopeng/musicradio/common/l;

    move-result-object p1

    iget p2, p0, Lbxo$3;->b:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/common/l;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lbxo$3;->c:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return p3
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 6

    .line 208
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lbxo$3;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
