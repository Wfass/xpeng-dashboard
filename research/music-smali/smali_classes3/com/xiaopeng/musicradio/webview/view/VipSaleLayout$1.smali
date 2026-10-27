.class Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$1;
.super Ljava/lang/Object;
.source "VipSaleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$000(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    .line 79
    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$000(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout$1;->a:Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->access$100(Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/webview/view/VipSaleLayout;->loadImage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
