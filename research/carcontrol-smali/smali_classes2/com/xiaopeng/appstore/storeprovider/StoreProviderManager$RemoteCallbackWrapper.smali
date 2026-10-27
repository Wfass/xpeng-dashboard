.class Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;
.super Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;
.source "StoreProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteCallbackWrapper"
.end annotation


# instance fields
.field public final clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V
    .locals 0

    .line 470
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 490
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 491
    :cond_1
    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    iget-object p1, p1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 497
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onAssembleEvent(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAssembleEvent, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", client:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;->onAssembleEvent(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteCallbackWrapper{client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
