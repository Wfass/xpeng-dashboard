.class Lcom/xiaopeng/musicradio/web/WebViewLayout$1;
.super Ljava/lang/Object;
.source "WebViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/WebViewLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/WebViewLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$1;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$1;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$000(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$1;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    .line 139
    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$000(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$1;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->loadUrl()V

    :cond_1
    return-void
.end method
