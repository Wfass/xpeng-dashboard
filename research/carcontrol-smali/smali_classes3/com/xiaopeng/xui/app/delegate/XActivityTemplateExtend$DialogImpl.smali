.class Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;
.source "XActivityTemplateExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityTemplate$Dialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogImpl"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V

    .line 170
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableOnPauseScene()V

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableOutSideScene()V

    return-void
.end method

.method initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V
    .locals 1

    const/4 v0, -0x2

    .line 176
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setWidth(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setHeight(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    const/16 v0, 0x11

    .line 178
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setGravity(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    return-void
.end method

.method initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->setAutoVisibleEnableOnPause(Z)V

    return-void
.end method

.method public synthetic lambda$useXDialogView$0$XActivityTemplateExtend$DialogImpl(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 1

    const-string p1, "XActivityTemplate"

    const-string v0, "onDismiss for dialog "

    .line 191
    invoke-static {p1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;->mDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;->mDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->dismiss(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public useXDialogView(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 1

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 190
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityTemplateExtend$DialogImpl$D6M74gFfgIWQhagroU09yD5oW1Y;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityTemplateExtend$DialogImpl$D6M74gFfgIWQhagroU09yD5oW1Y;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    return-void
.end method
