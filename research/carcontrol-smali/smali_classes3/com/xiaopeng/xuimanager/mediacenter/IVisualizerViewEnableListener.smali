.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener;
.super Ljava/lang/Object;
.source "IVisualizerViewEnableListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IVisualizerViewEnableListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IVisualizerViewEnableListener"


# virtual methods
.method public abstract onVisualizerViewEnable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
