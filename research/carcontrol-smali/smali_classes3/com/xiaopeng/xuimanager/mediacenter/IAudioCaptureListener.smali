.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener;
.super Ljava/lang/Object;
.source "IAudioCaptureListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IAudioCaptureListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IAudioCaptureListener"


# virtual methods
.method public abstract OnFftDataCapture([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnRatioData(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
