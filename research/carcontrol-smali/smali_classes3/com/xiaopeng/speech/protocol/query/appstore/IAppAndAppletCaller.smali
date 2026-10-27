.class public interface abstract Lcom/xiaopeng/speech/protocol/query/appstore/IAppAndAppletCaller;
.super Ljava/lang/Object;
.source "IAppAndAppletCaller.java"

# interfaces
.implements Lcom/xiaopeng/speech/IQueryCaller;


# virtual methods
.method public abstract getAppCloseStatus(Ljava/lang/String;)I
.end method

.method public getAppDownStatus(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
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
    .locals 0

    const/4 p1, -0x1

    return p1
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
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public screenFullSet(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public screenSplitSet(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
