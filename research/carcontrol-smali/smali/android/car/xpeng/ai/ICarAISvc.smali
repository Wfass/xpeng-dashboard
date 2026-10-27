.class public interface abstract Landroid/car/xpeng/ai/ICarAISvc;
.super Ljava/lang/Object;
.source "ICarAISvc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/ICarAISvc$Stub;,
        Landroid/car/xpeng/ai/ICarAISvc$Default;
    }
.end annotation


# virtual methods
.method public abstract getCarAIService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
