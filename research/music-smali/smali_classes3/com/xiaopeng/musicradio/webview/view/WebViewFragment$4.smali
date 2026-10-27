.class Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$4;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->setupTimeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$4;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$4;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;->access$200(Lcom/xiaopeng/musicradio/webview/view/WebViewFragment;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 289
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewFragment$4;->a(Ljava/lang/Long;)V

    return-void
.end method
