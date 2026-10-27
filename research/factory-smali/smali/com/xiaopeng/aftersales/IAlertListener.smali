.class public interface abstract Lcom/xiaopeng/aftersales/IAlertListener;
.super Ljava/lang/Object;
.source "IAlertListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aftersales/IAlertListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract alertDiagnosisError(IIJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
