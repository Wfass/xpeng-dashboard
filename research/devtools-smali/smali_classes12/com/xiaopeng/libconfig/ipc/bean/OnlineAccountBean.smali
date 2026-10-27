.class public Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;
.super Ljava/lang/Object;
.source "OnlineAccountBean.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private grade:I

.field private name:Ljava/lang/String;

.field private onLine:Z

.field private phone:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGrade()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->grade:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->uid:J

    return-wide v0
.end method

.method public isOnLine()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->onLine:Z

    return v0
.end method

.method public setGrade(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->grade:I

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setOnLine(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->onLine:Z

    .line 48
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->phone:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->pic:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->uid:J

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineAccountBean{uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", onLine="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->onLine:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", accessToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", refreshToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", grade="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->grade:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pic=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/OnlineAccountBean;->pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
