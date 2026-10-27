.class public Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;
.super Ljava/lang/Object;
.source "VideoItemBean.java"


# instance fields
.field private imgUri:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getImgUri()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->imgUri:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setImgUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUri"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->imgUri:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->source:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/data/VideoItemBean;->tag:Ljava/lang/String;

    .line 43
    return-void
.end method
