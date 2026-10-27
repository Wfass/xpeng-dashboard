.class public interface abstract Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;
.super Ljava/lang/Object;
.source "IAwarenessEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.awareness.IAwarenessEventListener"


# virtual methods
.method public abstract onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
