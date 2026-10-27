.class public interface abstract Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener;
.super Ljava/lang/Object;
.source "ISmartCommonEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/smart/ISmartCommonEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.smart.ISmartCommonEventListener"


# virtual methods
.method public abstract onSmartCommonEvent(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSmartSpeechTtsEvent(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
