.class public interface abstract Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;
.super Ljava/lang/Object;
.source "IAmbientEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.ambient.IAmbientEventListener"


# virtual methods
.method public abstract onAmbientLightEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
