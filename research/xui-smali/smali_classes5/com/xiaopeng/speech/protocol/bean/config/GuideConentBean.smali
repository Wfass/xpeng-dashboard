.class public Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;
.super Ljava/lang/Object;
.source "GuideConentBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field public props:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->props:Ljava/lang/Object;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->content:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->des:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->img:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setProps(Ljava/lang/Object;)V
    .locals 0
    .param p1, "props"    # Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;->props:Ljava/lang/Object;

    .line 43
    return-void
.end method
