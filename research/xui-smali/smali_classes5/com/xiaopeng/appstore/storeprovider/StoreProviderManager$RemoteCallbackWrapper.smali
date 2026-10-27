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
    .param p1, "clientListener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientListener"
        }
    .end annotation

    .line 665
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/IAssembleListener$Stub;-><init>()V

    .line 666
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    .line 667
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 684
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 685
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 686
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    .line 687
    .local v0, "that":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    iget-object v2, v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 692
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onAssembleEvent(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "info"    # Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventType",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAssembleEvent, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;->onAssembleEvent(ILcom/xiaopeng/appstore/storeprovider/AssembleInfo;)V

    .line 673
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteCallbackWrapper{client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    return-object v0
.end method
