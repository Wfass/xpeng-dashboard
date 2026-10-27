.class public Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "SkillDialogNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCloseWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 23
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onCloseWindow(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onForwardScreenEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 43
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onForwardScreenEvent(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 33
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onOpenWindow(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRefreshSkillData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 53
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onRefreshSkillData(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onShowDoubleGuide(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 63
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onShowDoubleGuide(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onShowKeyGuide(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 74
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onShowKeyGuide(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
