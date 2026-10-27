.class public Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Default;
.super Ljava/lang/Object;
.source "ISysConfig.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
