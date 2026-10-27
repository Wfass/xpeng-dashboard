.class public interface abstract Lcom/xiaopeng/xuimanager/awareness/IAwareness;
.super Ljava/lang/Object;
.source "IAwareness.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/awareness/IAwareness$Stub;,
        Lcom/xiaopeng/xuimanager/awareness/IAwareness$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.awareness.IAwareness"


# virtual methods
.method public abstract registerListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
