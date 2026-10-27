.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;
.super Ljava/lang/Object;
.source "MiniBean.java"


# instance fields
.field private aliId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ali_id"
    .end annotation
.end field

.field private alipayVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alipay_version"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private logo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private param:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "param"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->aliId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlipayVersion()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->alipayVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->param:Ljava/lang/String;

    return-object v0
.end method

.method public setAliId(Ljava/lang/String;)V
    .locals 0
    .param p1, "aliId"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->aliId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setAlipayVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "alipayVersion"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->alipayVersion:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->id:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->logo:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->param:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiniBean{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, ", aliId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->aliId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ", alipayVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->alipayVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, ", logo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->logo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, ", param=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/MiniBean;->param:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
