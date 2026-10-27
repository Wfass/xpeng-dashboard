.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener;
.super Ljava/lang/Object;
.source "ISDVisualizerDataListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/visualizer/ISDVisualizerDataListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.visualizer.ISDVisualizerDataListener"


# virtual methods
.method public abstract OnFftDataCapture(ILjava/lang/String;[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnRatioData(ILjava/lang/String;FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
