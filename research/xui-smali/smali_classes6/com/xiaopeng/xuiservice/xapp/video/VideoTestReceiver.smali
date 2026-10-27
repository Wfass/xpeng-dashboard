.class public Lcom/xiaopeng/xuiservice/xapp/video/VideoTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoTestReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.system_TEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    const-string v1, "action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "a":Ljava/lang/String;
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "data":Ljava/lang/String;
    const-string v3, "Media"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    const-string v3, "test"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->get()Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    move-result-object v4

    const-string/jumbo v5, "\u7236\u8f88\u7684\u8363\u5149"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "\u6211\u8981\u770b\u7236\u8f88\u7684\u8363\u5149"

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->queryMediaSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;)V

    .line 27
    :cond_0
    const-string v3, "TestEnvironment"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->get()Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->testEnvironmentChange(I)V

    .line 32
    .end local v1    # "a":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.system_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    return-void
.end method
