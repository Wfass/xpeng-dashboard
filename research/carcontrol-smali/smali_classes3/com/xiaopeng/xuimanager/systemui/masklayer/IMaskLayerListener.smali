.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;
.super Ljava/lang/Object;
.source "IMaskLayerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.masklayer.IMaskLayerListener"


# virtual methods
.method public abstract dismissMaskLayer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showMaskLayer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
