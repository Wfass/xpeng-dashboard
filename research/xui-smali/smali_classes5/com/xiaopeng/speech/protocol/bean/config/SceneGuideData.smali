.class public Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;
.super Ljava/lang/Object;
.source "SceneGuideData.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private isOpened:Z

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->isOpened:Z

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->data:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->isOpened:Z

    .line 41
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->subtitle:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/SceneGuideData;->title:Ljava/lang/String;

    .line 25
    return-void
.end method
