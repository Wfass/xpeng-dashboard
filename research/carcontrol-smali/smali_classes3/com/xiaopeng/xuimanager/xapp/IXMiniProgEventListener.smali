.class public interface abstract Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;
.super Ljava/lang/Object;
.source "IXMiniProgEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.xapp.IXMiniProgEventListener"


# virtual methods
.method public abstract onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
