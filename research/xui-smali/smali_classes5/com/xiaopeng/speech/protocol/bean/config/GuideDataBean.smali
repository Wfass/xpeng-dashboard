.class public Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;
.super Ljava/lang/Object;
.source "GuideDataBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;",
            ">;"
        }
    .end annotation
.end field

.field private isChange:Ljava/lang/String;

.field private isOpened:Z

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->content:Ljava/util/List;

    return-object v0
.end method

.method public getIsChange()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->isChange:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->type:I

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->isOpened:Z

    return v0
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/bean/config/GuideConentBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->content:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setIsChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "isChange"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->isChange:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->isOpened:Z

    .line 46
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 61
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/config/GuideDataBean;->type:I

    .line 62
    return-void
.end method
