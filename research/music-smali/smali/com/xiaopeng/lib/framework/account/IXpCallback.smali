.class public interface abstract Lcom/xiaopeng/lib/framework/account/IXpCallback;
.super Ljava/lang/Object;
.source "IXpCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/account/IXpCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFail(JLjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onSuccess(JLjava/lang/String;Landroid/os/Bundle;)V
.end method
