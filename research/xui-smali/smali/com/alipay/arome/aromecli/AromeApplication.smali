.class public Lcom/alipay/arome/aromecli/AromeApplication;
.super Landroid/app/Application;
.source "AromeApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 13
    invoke-static {p1}, Lcom/alipay/arome/aromecli/AromeInit;->attachApplicationContext(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 17
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/arome/aromecli/AromeInit;->init(Lcom/alipay/arome/aromecli/AromeInit$Callback;)V

    .line 19
    return-void
.end method
