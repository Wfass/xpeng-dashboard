.class public Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;
.super Ljava/lang/Object;
.source "OperationBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private des:Ljava/lang/String;

.field private imgDisable:Ljava/lang/String;

.field private imgEnable:Ljava/lang/String;

.field private isOpened:Z

.field private tag:Ljava/lang/String;

.field private tips:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getImgDisable()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->imgDisable:Ljava/lang/String;

    return-object v0
.end method

.method public getImgEnable()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->imgEnable:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->isOpened:Z

    return v0
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->des:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setImgDisable(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgDisable"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->imgDisable:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setImgEnable(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgEnable"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->imgEnable:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->isOpened:Z

    .line 33
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->tag:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .param p1, "tips"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->tips:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/OperationBean;->type:Ljava/lang/String;

    .line 25
    return-void
.end method
