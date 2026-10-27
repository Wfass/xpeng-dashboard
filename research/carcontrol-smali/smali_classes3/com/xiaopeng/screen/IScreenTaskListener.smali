.class public interface abstract Lcom/xiaopeng/screen/IScreenTaskListener;
.super Ljava/lang/Object;
.source "IScreenTaskListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/screen/IScreenTaskListener$Stub;,
        Lcom/xiaopeng/screen/IScreenTaskListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.screen.IScreenTaskListener"


# virtual methods
.method public abstract onActivityChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEventChanged(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
