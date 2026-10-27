.class public Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;
.super Ljava/lang/Object;
.source "XActivityConfigChanged.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;


# static fields
.field private static final TAG:Ljava/lang/String; = "XActivityConfig"


# instance fields
.field private mAreaType:Ljava/lang/String;

.field private mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateScreenChanged(Ljava/lang/String;)V
    .locals 5

    .line 51
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    const/4 v1, 0x1

    const-string v2, "XActivityConfig"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "updateScreenChanged callback is null  source:%s"

    .line 60
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    return-void

    .line 68
    :cond_3
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v1

    const/4 p1, 0x2

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    aput-object v1, v4, p1

    const/4 p1, 0x3

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    if-nez v1, :cond_4

    const-string v1, "callback is null"

    goto :goto_0

    :cond_4
    const-string v1, ""

    :goto_0
    aput-object v1, v4, p1

    const-string p1, "updateScreenChanged source:%s,areaType:%s ,mAreaType:%s, hash:%s, %s"

    .line 69
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 75
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 78
    :cond_6
    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    if-eqz p1, :cond_7

    .line 80
    invoke-interface {p1, v3, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;->onXActivityConfigChanged(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const-string p1, "onConfigurationChanged"

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->updateScreenChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "onCreate"

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->updateScreenChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume"

    .line 42
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->updateScreenChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setCallback(Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    return-void
.end method
