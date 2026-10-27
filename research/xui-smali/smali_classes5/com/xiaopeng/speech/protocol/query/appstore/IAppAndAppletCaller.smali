.class public interface abstract Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;
.super Ljava/lang/Object;
.source "IAppAndAppletCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getAppCloseStatus(Ljava/lang/String;)I
.end method

.method public getAppDownStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "paramString"    # Ljava/lang/String;

    .line 118
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getAppOpenStatus(Ljava/lang/String;)I
.end method

.method public abstract getAppStatusV2(Ljava/lang/String;)I
.end method

.method public abstract getAppletCloseStatus(Ljava/lang/String;)I
.end method

.method public abstract getAppletOpenStatus(Ljava/lang/String;)I
.end method

.method public getCurrentBackStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getCurrentCloseStatus(Ljava/lang/String;)I
.end method

.method public abstract hasDialogCloseByHand()Z
.end method

.method public abstract onCloseAppStoreMainPage()I
.end method

.method public abstract onCloseAppletMainPage()I
.end method

.method public abstract onCloseAppshopPage()I
.end method

.method public abstract onOpenAppStoreMainPage(Ljava/lang/String;)I
.end method

.method public abstract onOpenAppletMainPage(Ljava/lang/String;)I
.end method

.method public abstract onOpenAppshopPage(Ljava/lang/String;)I
.end method

.method public screenChangeSet(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 160
    const/4 v0, -0x1

    return v0
.end method

.method public screenFullSet(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method public screenSplitSet(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 151
    const/4 v0, -0x1

    return v0
.end method
