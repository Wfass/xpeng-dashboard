.class public interface abstract Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;
.super Ljava/lang/Object;
.source "IConfigurationServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribe(Ljava/lang/String;Ljava/lang/String;ILcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
