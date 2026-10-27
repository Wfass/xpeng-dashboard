.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener;
.super Ljava/lang/Object;
.source "ISystemStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/systemstate/ISystemStateListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.systemstate.ISystemStateListener"


# virtual methods
.method public abstract getAppState(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSystemStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
