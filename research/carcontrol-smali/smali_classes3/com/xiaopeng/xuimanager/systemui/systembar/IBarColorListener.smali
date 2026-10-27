.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;
.super Ljava/lang/Object;
.source "IBarColorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.systembar.IBarColorListener"


# virtual methods
.method public abstract onBarColorChanged(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
