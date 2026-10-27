.class public Lcom/xiaopeng/speech/protocol/node/skill/AbsSkillDialogListener;
.super Ljava/lang/Object;
.source "AbsSkillDialogListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/skill/SkillDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 14
    return-void
.end method

.method public onForwardScreenEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 24
    return-void
.end method

.method public onOpenWindow(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 19
    return-void
.end method

.method public onRefreshSkillData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 29
    return-void
.end method

.method public onShowDoubleGuide(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public onShowKeyGuide(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 39
    return-void
.end method
