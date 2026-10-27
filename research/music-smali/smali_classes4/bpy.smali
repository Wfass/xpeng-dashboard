.class public abstract Lbpy;
.super Lcom/xiaopeng/appstart/core/AppStartTask;
.source "BaseStartTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/appstart/core/AppStartTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .line 12
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method protected b()Landroid/app/Application;
    .locals 1

    .line 16
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "MusicApp"

    return-object v0
.end method
