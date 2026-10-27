.class public interface abstract Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;
.super Ljava/lang/Object;
.source "ILogicTreeUpgrader.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aftersales/ILogicTreeUpgrader$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUpgradeStatus(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
