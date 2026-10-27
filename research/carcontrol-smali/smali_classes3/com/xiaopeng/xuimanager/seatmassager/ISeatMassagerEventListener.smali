.class public interface abstract Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener;
.super Ljava/lang/Object;
.source "ISeatMassagerEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.seatmassager.ISeatMassagerEventListener"


# virtual methods
.method public abstract onMassagerEvent(IILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVibrateEvent(Ljava/util/List;ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
