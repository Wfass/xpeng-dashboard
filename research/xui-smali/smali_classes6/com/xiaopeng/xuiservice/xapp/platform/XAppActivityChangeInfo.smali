.class public Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
.super Ljava/lang/Object;
.source "XAppActivityChangeInfo.java"


# instance fields
.field private mDisplayId:I

.field private mTopXAppActivityInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mDisplayId:I

    return v0
.end method

.method public getTopActivityInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    return-object v0
.end method

.method public isContainerPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 32
    .local v1, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const/4 v0, 0x1

    return v0

    .line 35
    .end local v1    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 26
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mDisplayId:I

    .line 27
    return-void
.end method

.method public setTopActivityInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 14
    .local p1, "topXAppActivityInfo":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    .line 15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->mTopXAppActivityInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 47
    .local v2, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v3, "||||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .end local v2    # "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
