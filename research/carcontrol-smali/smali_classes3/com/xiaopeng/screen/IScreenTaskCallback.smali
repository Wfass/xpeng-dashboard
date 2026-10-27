.class public interface abstract Lcom/xiaopeng/screen/IScreenTaskCallback;
.super Ljava/lang/Object;
.source "IScreenTaskCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/screen/IScreenTaskCallback$Stub;,
        Lcom/xiaopeng/screen/IScreenTaskCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.screen.IScreenTaskCallback"


# virtual methods
.method public abstract onResizeCompleted(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResizeError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
