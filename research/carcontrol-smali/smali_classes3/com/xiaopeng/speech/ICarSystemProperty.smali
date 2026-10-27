.class public interface abstract Lcom/xiaopeng/speech/ICarSystemProperty;
.super Ljava/lang/Object;
.source "ICarSystemProperty.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/ICarSystemProperty$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCarType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOverseasCarType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
