.class public interface abstract Lcom/xiaopeng/speech/vui/vuiengine/IVuiProtocolTest;
.super Ljava/lang/Object;
.source "IVuiProtocolTest.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/vuiengine/IVuiProtocolTest$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVuiElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleVuiEvent(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
