.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener;
.super Ljava/lang/Object;
.source "ICarCheckListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/carcheck/ICarCheckListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.carcheck.ICarCheckListener"


# virtual methods
.method public abstract onSystemUIStatusChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCarCheckExtra(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
