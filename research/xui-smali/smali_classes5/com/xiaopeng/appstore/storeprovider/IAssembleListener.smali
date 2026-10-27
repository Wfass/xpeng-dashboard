.class public interface abstract Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;
.super Ljava/lang/Object;
.source "IAssembleListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;,
        Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onAssembleEvent(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventType",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
