.class public Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;
.super Ljava/lang/Object;
.source "SkillData.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private aiSubTitle:Ljava/lang/String;

.field private aiTitle:Ljava/lang/String;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;

.field private switchSkill:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAiSubTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->aiSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAiTitle()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->aiTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->data:Ljava/util/List;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitchSkill()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->switchSkill:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAiSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->aiSubTitle:Ljava/lang/String;

    return-void
.end method

.method public setAiTitle(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->aiTitle:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/protocol/bean/skill/DataBean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->data:Ljava/util/List;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setSwitchSkill(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->switchSkill:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;->title:Ljava/lang/String;

    return-void
.end method
