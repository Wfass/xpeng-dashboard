.class public Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private endColor:I

.field private headInfo:Ljava/lang/String;

.field private imageRes:Ljava/lang/String;

.field private isChange:Z

.field private modeName:Ljava/lang/String;

.field private skill:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;",
            ">;"
        }
    .end annotation
.end field

.field private skillDetailBg:Ljava/lang/String;

.field private startColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->isChange:Z

    return-void
.end method


# virtual methods
.method public getEndColor()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->endColor:I

    return v0
.end method

.method public getHeadInfo()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->headInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getImageRes()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->imageRes:Ljava/lang/String;

    return-object v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->modeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSkill()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->skill:Ljava/util/List;

    return-object v0
.end method

.method public getSkillDetailBg()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->skillDetailBg:Ljava/lang/String;

    return-object v0
.end method

.method public getStartColor()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->startColor:I

    return v0
.end method

.method public isChange()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->isChange:Z

    return v0
.end method

.method public setEndColor(I)V
    .locals 0
    .param p1, "endColor"    # I

    .line 72
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->endColor:I

    .line 73
    return-void
.end method

.method public setHeadInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "headInfo"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->headInfo:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setImageRes(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageRes"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->imageRes:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setIsChange(Z)V
    .locals 0
    .param p1, "isChange"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->isChange:Z

    .line 84
    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "modeName"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->modeName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSkill(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "skill":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->skill:Ljava/util/List;

    .line 45
    return-void
.end method

.method public setSkillDetailBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "skillDetailBg"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->skillDetailBg:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setStartColor(I)V
    .locals 0
    .param p1, "startColor"    # I

    .line 64
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;->startColor:I

    .line 65
    return-void
.end method
