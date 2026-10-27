.class Lcom/xiaopeng/musicradio/web/WebViewLayout$5;
.super Ljava/lang/Object;
.source "WebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/WebViewLayout;->onLoadingFinished(Z)V
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

    .line 382
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$5;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$5;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->access$100(Lcom/xiaopeng/musicradio/web/WebViewLayout;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/WebViewLayout$5;->a:Lcom/xiaopeng/musicradio/web/WebViewLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/WebViewLayout;->showLoadingTip(I)V

    return-void
.end method
