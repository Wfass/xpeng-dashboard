.class Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;
.super Landroid/webkit/WebViewClient;
.source "ProtocolLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/web/ProtocolLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Landroid/webkit/WebView;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished:mLoadingFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$300(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$200(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$300(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$400(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Z)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "VipBuyLayout"

    const-string v1, "onPageStarted"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$202(Lcom/xiaopeng/musicradio/web/ProtocolLayout;J)J

    .line 289
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 290
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$500(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)V

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$600(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VipBuyLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$200(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$302(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Z)Z

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$300(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$400(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Z)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    .line 277
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

    .line 278
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$200(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$302(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Z)Z

    .line 281
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/ProtocolLayout$a;->a:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$300(Lcom/xiaopeng/musicradio/web/ProtocolLayout;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->access$400(Lcom/xiaopeng/musicradio/web/ProtocolLayout;Z)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    const-string p1, "VipBuyLayout"

    const-string p3, "onReceivedSslError"

    .line 305
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    .line 311
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

    .line 317
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
