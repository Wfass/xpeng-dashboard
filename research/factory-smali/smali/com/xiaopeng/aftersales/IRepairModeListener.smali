.class public interface abstract Lcom/xiaopeng/aftersales/IRepairModeListener;
.super Ljava/lang/Object;
.source "IRepairModeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aftersales/IRepairModeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRepairModeChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
