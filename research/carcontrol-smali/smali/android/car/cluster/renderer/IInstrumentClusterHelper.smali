.class public interface abstract Landroid/car/cluster/renderer/IInstrumentClusterHelper;
.super Ljava/lang/Object;
.source "IInstrumentClusterHelper.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub;,
        Landroid/car/cluster/renderer/IInstrumentClusterHelper$Default;
    }
.end annotation


# virtual methods
.method public abstract startFixedActivityModeForDisplayAndUser(Landroid/content/Intent;Landroid/os/Bundle;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopFixedActivityMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
