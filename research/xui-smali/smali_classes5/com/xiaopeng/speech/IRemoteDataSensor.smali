.class public interface abstract Lcom/xiaopeng/speech/IRemoteDataSensor;
.super Ljava/lang/Object;
.source "IRemoteDataSensor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/IRemoteDataSensor$Stub;
    }
.end annotation


# virtual methods
.method public abstract onQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
