.class Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;
.super Ljava/lang/Object;
.source "VipSaleLayout.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

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

    .line 115
    iget-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$200(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;I)V

    .line 116
    iget-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$300(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 117
    iget-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$300(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

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

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$200(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;I)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$300(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 6

    .line 105
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$2;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
