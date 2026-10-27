.class public interface abstract Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;
.super Ljava/lang/Object;
.source "ISysConfigListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;,
        Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.sysconfig.ISysConfigListener"


# virtual methods
.method public abstract onSysConfigChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
