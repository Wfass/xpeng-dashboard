.class public Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;
.super Ljava/lang/Object;
.source "SkillBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private function:Ljava/lang/String;

.field private isChange:Z

.field private tips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;->isChange:Z

    return-void
.end method


# virtual methods
.method public getFunction()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;->tips:Ljava/util/List;

    return-object v0
.end method

.method public isChange()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;->isChange:Z

    return v0
.end method

.method public setChange(Z)V
    .locals 0
    .param p1, "isChange"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;->isChange:Z

    .line 46
    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;->function:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTips(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "tips":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillBean;->tips:Ljava/util/List;

    .line 38
    return-void
.end method
