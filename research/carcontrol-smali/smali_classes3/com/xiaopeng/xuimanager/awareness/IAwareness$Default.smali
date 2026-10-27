.class public Lcom/xiaopeng/xuimanager/awareness/IAwareness$Default;
.super Ljava/lang/Object;
.source "IAwareness.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/awareness/IAwareness;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/awareness/IAwareness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/awareness/IAwarenessEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
