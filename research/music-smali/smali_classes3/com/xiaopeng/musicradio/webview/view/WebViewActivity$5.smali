.class Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$5;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->setupTimeOut()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$5;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 0

    .line 295
    iget-object p1, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$5;->a:Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->access$200(Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 292
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$5;->a(Ljava/lang/Long;)V

    return-void
.end method
