.class Lcom/xiaopeng/xuimanager/nova/NovaHookBinder;
.super Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;
.source "NovaHookBinder.java"


# instance fields
.field private final hook:Lcom/xiaopeng/xuimanager/nova/INovaClientHook;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/nova/INovaClientHook;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/nova/NovaHookBinder;->hook:Lcom/xiaopeng/xuimanager/nova/INovaClientHook;

    return-void
.end method


# virtual methods
.method public ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "needUpgrade_bundle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "needUpgrade_bundle_resource"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p3, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable(I)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/nova/NovaReleaseBundleInfo;

    const/4 p2, 0x1

    .line 41
    invoke-virtual {p3, p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable(I)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/nova/NovaResource;

    .line 42
    iget-object p3, p0, Lcom/xiaopeng/xuimanager/nova/NovaHookBinder;->hook:Lcom/xiaopeng/xuimanager/nova/INovaClientHook;

    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/xuimanager/nova/INovaClientHook;->needUpgrade(Lcom/xiaopeng/xuimanager/nova/NovaReleaseBundleInfo;Lcom/xiaopeng/xuimanager/nova/NovaResource;)Z

    move-result p1

    .line 43
    invoke-virtual {p4, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setBoolean(Z)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p3}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/nova/NovaReleaseBundleInfo;

    .line 35
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/nova/NovaHookBinder;->hook:Lcom/xiaopeng/xuimanager/nova/INovaClientHook;

    invoke-interface {p2, p1}, Lcom/xiaopeng/xuimanager/nova/INovaClientHook;->needUpgrade(Lcom/xiaopeng/xuimanager/nova/NovaReleaseBundleInfo;)Z

    move-result p1

    .line 36
    invoke-virtual {p4, p1}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->setBoolean(Z)V

    :goto_0
    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registerListenerEx(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unRegisterListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unRegisterListenerEx(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
