.class public Lcom/loostone/libserver/version1/entity/NetAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetAddress"


# instance fields
.field private appUpdate:Ljava/lang/String;

.field private cacheRefresh:Ljava/lang/String;

.field private communicationKernel:Ljava/lang/String;

.field private karaokeVoiceApp:Ljava/lang/String;

.field private karaokeVolume:Ljava/lang/String;

.field private micCommInfo:Ljava/lang/String;

.field private micLimitInfo:Ljava/lang/String;

.field private statisticalMicInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppUpdate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->appUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheRefresh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->cacheRefresh:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunicationKernel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->communicationKernel:Ljava/lang/String;

    return-object v0
.end method

.method public getKaraokeVoiceApp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->karaokeVoiceApp:Ljava/lang/String;

    return-object v0
.end method

.method public getKaraokeVolume()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->karaokeVolume:Ljava/lang/String;

    return-object v0
.end method

.method public getMicCommInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->micCommInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMicLimitInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->micLimitInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticalMicInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->statisticalMicInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAppUpdate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->appUpdate:Ljava/lang/String;

    return-void
.end method

.method public setCacheRefresh(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->cacheRefresh:Ljava/lang/String;

    return-void
.end method

.method public setCommunicationKernel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->communicationKernel:Ljava/lang/String;

    return-void
.end method

.method public setKaraokeVoiceApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->karaokeVoiceApp:Ljava/lang/String;

    return-void
.end method

.method public setKaraokeVolume(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->karaokeVolume:Ljava/lang/String;

    return-void
.end method

.method public setMicCommInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->micCommInfo:Ljava/lang/String;

    return-void
.end method

.method public setMicLimitInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->micLimitInfo:Ljava/lang/String;

    return-void
.end method

.method public setStatisticalMicInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->statisticalMicInfo:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetAddress{appUpdate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->appUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", micLimitInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->micLimitInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statisticalMicInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->statisticalMicInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", micCommInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->micCommInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cacheRefresh=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->cacheRefresh:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", communicationKernel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->communicationKernel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", karaokeVoiceApp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->karaokeVoiceApp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", karaokeVolume=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/loostone/libserver/version1/entity/NetAddress;->karaokeVolume:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
