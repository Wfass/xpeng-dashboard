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

    .line 16
    return-void
.end method


# virtual methods
.method protected onCloseWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "ai.dismiss.skill.window"
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 21
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 23
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onCloseWindow(Ljava/lang/String;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onForwardScreenEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "ai.forward.screen.event"
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 43
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onForwardScreenEvent(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenWindow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "ai.show.skill.window"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 31
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 33
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onOpenWindow(Ljava/lang/String;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRefreshSkillData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "speech.skill.refresh.data"
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 53
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onRefreshSkillData(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onShowDoubleGuide(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "speech.skill.double.guide"
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 63
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onShowDoubleGuide(Ljava/lang/String;)V

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onShowKeyGuide(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "speech.skill.key.guide"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;->onShowKeyGuide(Ljava/lang/String;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
