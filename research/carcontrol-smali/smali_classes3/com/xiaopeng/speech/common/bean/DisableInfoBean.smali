.class public Lcom/xiaopeng/speech/common/bean/DisableInfoBean;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "DisableInfoBean.java"


# instance fields
.field private binder:Landroid/os/IBinder;

.field private byWho:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private notifyType:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->binder:Landroid/os/IBinder;

    .line 21
    iput p2, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->type:I

    .line 22
    iput-object p3, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->byWho:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->info:Ljava/lang/String;

    .line 24
    iput p5, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->notifyType:I

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getByWho()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->byWho:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyType()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->notifyType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->type:I

    return v0
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public setByWho(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->byWho:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setNotifyType(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->notifyType:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableInfoBean{binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", byWho=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->byWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", info=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->notifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
