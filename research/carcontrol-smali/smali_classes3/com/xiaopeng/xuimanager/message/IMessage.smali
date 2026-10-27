.class public interface abstract Lcom/xiaopeng/xuimanager/message/IMessage;
.super Ljava/lang/Object;
.source "IMessage.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/message/IMessage$Stub;,
        Lcom/xiaopeng/xuimanager/message/IMessage$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.message.IMessage"


# virtual methods
.method public abstract publishMessage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
