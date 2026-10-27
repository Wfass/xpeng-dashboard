.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener;
.super Ljava/lang/Object;
.source "IBTStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IBTStatusListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IBTStatusListener"


# virtual methods
.method public abstract onBtStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
