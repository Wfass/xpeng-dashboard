.class public Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$$ARouter$$Autowired;
.super Ljava/lang/Object;
.source "WebViewActivity$$ARouter$$Autowired.java"

# interfaces
.implements Lcom/alibaba/android/arouter/facade/template/ISyringe;


# instance fields
.field private serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Ljava/lang/Object;)V
    .locals 3

    .line 16
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/arouter/facade/service/SerializationService;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity$$ARouter$$Autowired;->serializationService:Lcom/alibaba/android/arouter/facade/service/SerializationService;

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;

    .line 18
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dayUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mDayUrl:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nightUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mNightUrl:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTitleEnable:Z

    const-string v2, "titleEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/xiaopeng/musicradio/webview/view/WebViewActivity;->mTitleEnable:Z

    return-void
.end method
