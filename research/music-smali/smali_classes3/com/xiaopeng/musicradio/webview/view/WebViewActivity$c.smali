.class Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static a:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static a()V
    .locals 3

    .line 478
    invoke-static {}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;->b()V

    .line 479
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 480
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c$1;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c$1;-><init>()V

    .line 481
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;->a:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static b()V
    .locals 1

    .line 492
    sget-object v0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    sget-object v0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;->a:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 495
    sput-object v0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$c;->a:Lio/reactivex/disposables/Disposable;

    return-void
.end method
