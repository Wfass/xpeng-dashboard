.class Lcom/xiaopeng/musicradio/web/WebViewLayout$2;
.super Ljava/lang/Object;
.source "WebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/WebViewLayout;->showLoadingTip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/web/WebViewLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;I)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->b:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    iget v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->a:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->b:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$100(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->b:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$100(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->b:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$000(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->a:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 178
    iget v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->b:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$000(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_2

    .line 179
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$2;->b:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$000(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_2
    return-void
.end method
