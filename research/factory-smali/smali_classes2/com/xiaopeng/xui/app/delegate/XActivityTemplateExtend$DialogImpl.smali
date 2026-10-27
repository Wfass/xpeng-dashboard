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
    .param p1, "mActivity"    # Landroid/app/Activity;

    .line 156
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;-><init>(Landroid/app/Activity;)V

    .line 157
    return-void
.end method

.method public static synthetic lambda$useXDialogView$0(Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 2
    .param p1, "dialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 188
    const-string v0, "XActivityTemplate"

    const-string v1, "onDismiss for dialog "

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;->mDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;->mDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;->dismiss(I)V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V
    .locals 0
    .param p1, "causeGroup"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;

    .line 166
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V

    .line 167
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableOnPauseScene()V

    .line 168
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableOutSideScene()V

    .line 169
    return-void
.end method

.method initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V
    .locals 2
    .param p1, "builder"    # Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    .line 173
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setWidth(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setHeight(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object v0

    .line 175
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setGravity(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    .line 176
    return-void
.end method

.method initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V
    .locals 1
    .param p1, "windowVisible"    # Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    .line 180
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->setAutoVisibleEnableOnPause(Z)V

    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 160
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->onCreate(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method

.method public useXDialogView(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;)V
    .locals 1
    .param p1, "xDialogView"    # Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setCloseVisibility(Z)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 187
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityTemplateExtend$DialogImpl$DiJCLdF0nAV_RQv_es325X0eRGw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityTemplateExtend$DialogImpl$DiJCLdF0nAV_RQv_es325X0eRGw;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogView;->setOnDismissListener(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnDismissListener;)Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    .line 193
    return-void
.end method
