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
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private updateScreenChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    return-void

    .line 60
    :cond_1
    const-string v0, "XActivityConfig"

    const-string v3, "updateScreenChanged callback is null  source:%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 66
    return-void

    .line 68
    :cond_3
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "areaType":Ljava/lang/String;
    const-string v3, "XActivityConfig"

    const-string v4, "updateScreenChanged source:%s,areaType:%s ,mAreaType:%s, hash:%s, %s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v0, v5, v1

    const/4 v1, 0x2

    iget-object v6, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x3

    iget-object v6, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget-object v6, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    if-nez v6, :cond_4

    const-string v6, "callback is null"

    goto :goto_0

    :cond_4
    const-string v6, ""

    :goto_0
    aput-object v6, v5, v1

    .line 69
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    return-void

    .line 75
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    return-void

    .line 78
    :cond_6
    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mAreaType:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    if-eqz v1, :cond_7

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;->onXActivityConfigChanged(ILjava/lang/Object;)V

    .line 83
    :cond_7
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->updateScreenChanged(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->updateScreenChanged(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 42
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->updateScreenChanged(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setCallback(Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;->mCallback:Lcom/xiaopeng/xui/app/delegate/XActivityConfigChangedCallback;

    .line 33
    return-void
.end method
