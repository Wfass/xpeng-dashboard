.class public Lcom/xiaopeng/musicradio/bean/VipDetail;
.super Ljava/lang/Object;
.source "VipDetail.java"


# static fields
.field public static final VIP_1:I = 0x1

.field public static final VIP_2:I = 0x2

.field public static final VIP_3:I = 0x3

.field public static final VIP_4:I = 0x4


# instance fields
.field private expireTime:J

.field private logo:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private vipType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->expireTime:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getVipType()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->vipType:Ljava/lang/Integer;

    return-object v0
.end method

.method public setExpireTime(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->expireTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->logo:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->text:Ljava/lang/String;

    return-void
.end method

.method public setVipType(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->vipType:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VipDetail{vipType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->vipType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/VipDetail;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
