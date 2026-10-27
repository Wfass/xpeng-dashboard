.class public interface abstract Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;
.super Ljava/lang/Object;
.source "ISysConfig.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;,
        Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.sysconfig.ISysConfig"


# virtual methods
.method public abstract registerSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
