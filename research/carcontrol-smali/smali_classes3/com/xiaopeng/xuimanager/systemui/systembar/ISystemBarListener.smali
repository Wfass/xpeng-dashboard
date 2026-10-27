.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;
.super Ljava/lang/Object;
.source "ISystemBarListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.systembar.ISystemBarListener"


# virtual methods
.method public abstract onContent(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
