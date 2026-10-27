.class public Lcom/xiaopeng/speech/protocol/bean/skill/RefreshSkillBean;
.super Ljava/lang/Object;
.source "RefreshSkillBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field public data:Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/RefreshSkillBean;->data:Lcom/xiaopeng/speech/protocol/bean/skill/SkillData;

    return-void
.end method
