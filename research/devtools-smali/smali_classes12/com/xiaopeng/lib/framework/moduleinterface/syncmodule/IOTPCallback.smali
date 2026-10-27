.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/IOTPCallback;
.super Ljava/lang/Object;
.source "IOTPCallback.java"


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onGetOTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
