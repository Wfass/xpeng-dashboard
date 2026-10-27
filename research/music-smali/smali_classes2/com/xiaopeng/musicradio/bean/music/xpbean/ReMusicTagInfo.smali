.class public Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;
.super Ljava/lang/Object;
.source "ReMusicTagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2cL


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private select:Z

.field private sort:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->type:I

    .line 12
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->sort:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 59
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->sort:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->type:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->select:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->select:Z

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->sort:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReMusicTagInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->select:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/music/xpbean/ReMusicTagInfo;->sort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
