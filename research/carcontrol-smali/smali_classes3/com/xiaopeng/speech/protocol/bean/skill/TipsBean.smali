.class public Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;
.super Ljava/lang/Object;
.source "TipsBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private tipName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getTipName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;->tipName:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setTipName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/skill/TipsBean;->tipName:Ljava/lang/String;

    return-void
.end method
