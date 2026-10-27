.class Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Landroid/webkit/WebView;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished:mLoadingFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$500(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$500(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$1300(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "WebViewActivity"

    const-string v1, "onPageStarted"

    .line 431
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$1002(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;J)J

    .line 433
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 434
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$1100(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V

    .line 435
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$1200(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {p3}, Lbtm;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$502(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Z)Z

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$600(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$700(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 421
    invoke-static {p3}, Lbtm;->a(Landroid/webkit/WebResourceError;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$502(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;Z)Z

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$800(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$900(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    const-string p1, "WebViewActivity"

    const-string p3, "onReceivedSslError"

    .line 447
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldOverrideUrlLoading:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebViewActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldOverrideUrlLoading:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebViewActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
