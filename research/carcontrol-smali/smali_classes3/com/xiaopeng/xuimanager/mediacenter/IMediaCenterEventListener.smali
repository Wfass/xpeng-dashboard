.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener;
.super Ljava/lang/Object;
.source "IMediaCenterEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IMediaCenterEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IMediaCenterEventListener"


# virtual methods
.method public abstract onError(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
