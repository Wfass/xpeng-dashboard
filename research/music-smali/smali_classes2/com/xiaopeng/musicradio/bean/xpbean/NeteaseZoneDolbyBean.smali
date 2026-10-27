.class public Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "NeteaseZoneDolbyBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;

    return-object v0
.end method

.method public setData(Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NeteaseZoneDolbyBean{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean;->data:Lcom/xiaopeng/musicradio/bean/xpbean/NeteaseZoneDolbyBean$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
