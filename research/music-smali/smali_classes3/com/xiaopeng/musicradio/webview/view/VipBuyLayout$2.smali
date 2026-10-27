.class Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;
.super Ljava/lang/Object;
.source "VipBuyLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$600(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    .line 127
    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$600(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const-string p1, "VipBuyLayout"

    const-string v0, "onClick: getBuyUrl"

    .line 128
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$000(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;I)V

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$800(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout$2;->a:Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;->access$700(Lcom/xiaopeng/musicradio/webview/view/VipBuyLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/webview/presenter/VipBuyPresenter;->a(I)V

    :cond_1
    return-void
.end method
