.class public interface abstract Lcom/xiaopeng/xuimanager/message/IMessageListener;
.super Ljava/lang/Object;
.source "IMessageListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/message/IMessageListener$Stub;,
        Lcom/xiaopeng/xuimanager/message/IMessageListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.message.IMessageListener"


# virtual methods
.method public abstract onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
