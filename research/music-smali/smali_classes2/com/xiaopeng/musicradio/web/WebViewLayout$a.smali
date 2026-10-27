.class Lcom/xiaopeng/musicradio/web/WebViewLayout$a;
.super Landroid/webkit/WebViewClient;
.source "WebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/web/WebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/WebViewLayout;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/web/WebViewLayout;Landroid/webkit/WebView;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished:mLoadingFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$400(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$400(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$500(Lcom/xiaopeng/musicradio/web/WebViewLayout;Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "VipBuyLayout"

    const-string v1, "onPageStarted"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$602(Lcom/xiaopeng/musicradio/web/WebViewLayout;J)J

    .line 320
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$700(Lcom/xiaopeng/musicradio/web/WebViewLayout;)V

    .line 322
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$100(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$300(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$402(Lcom/xiaopeng/musicradio/web/WebViewLayout;Z)Z

    .line 302
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$400(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$500(Lcom/xiaopeng/musicradio/web/WebViewLayout;Z)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 307
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

    const-string v1, "VipBuyLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$300(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 312
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$402(Lcom/xiaopeng/musicradio/web/WebViewLayout;Z)Z

    .line 313
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$a;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$400(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$500(Lcom/xiaopeng/musicradio/web/WebViewLayout;Z)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    const-string p1, "VipBuyLayout"

    const-string p3, "onReceivedSslError"

    .line 334
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 340
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

    const-string p2, "VipBuyLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldOverrideUrlLoading:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VipBuyLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
