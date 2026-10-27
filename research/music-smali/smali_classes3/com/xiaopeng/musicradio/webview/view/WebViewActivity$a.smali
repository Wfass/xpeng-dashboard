.class Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Landroid/webkit/WebView;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished:mLoadingFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$500(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$500(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$1300(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "WebViewActivity"

    const-string v1, "onPageStarted"

    .line 438
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$1002(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;J)J

    .line 440
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$1100(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$1200(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {p3}, Lbtm;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$502(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Z)Z

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$600(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 420
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$700(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;

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

    .line 426
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

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 428
    invoke-static {p3}, Lbtm;->a(Landroid/webkit/WebResourceError;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$502(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;Z)Z

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$800(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lbth;

    iget-object p1, p1, Lbth;->h:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$a;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$900(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)Landroidx/databinding/ViewDataBinding;

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

    .line 454
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 460
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

    .line 466
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
