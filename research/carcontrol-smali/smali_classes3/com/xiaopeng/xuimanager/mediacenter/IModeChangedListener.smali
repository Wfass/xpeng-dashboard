.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener;
.super Ljava/lang/Object;
.source "IModeChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/IModeChangedListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.IModeChangedListener"


# virtual methods
.method public abstract onModeChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
