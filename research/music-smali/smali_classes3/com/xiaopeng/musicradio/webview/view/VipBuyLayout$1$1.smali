.class Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;
.super Ljava/lang/Object;
.source "VipBuyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$000(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$100(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$200(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$300(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$400(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$400(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$100(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/UserBuyUrl;->getMainTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$200(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/UserBuyUrl;->getFirstSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$300(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->a:Lcom/xiaopeng/musicradio/bean/UserBuyUrl;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/UserBuyUrl;->getSecondSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$1;->b:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$500(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    return-void
.end method
