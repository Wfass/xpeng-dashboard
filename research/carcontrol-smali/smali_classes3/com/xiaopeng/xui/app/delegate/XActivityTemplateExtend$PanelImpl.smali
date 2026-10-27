.class Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;
.source "XActivityTemplateExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityTemplate$Panel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanelImpl"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V

    .line 216
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableOutSideScene()V

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableOnPauseScene()V

    .line 220
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableSpeedTimeOutScene()V

    return-void
.end method

.method initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V
    .locals 6

    .line 226
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_width_v5:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(Landroid/content/Context;I)I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_height_v5:I

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 231
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setWidth(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setHeight(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setGravity(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 234
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_x:I

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(Landroid/content/Context;I)I

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_y:I

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(Landroid/content/Context;I)I

    move-result v2

    .line 236
    iget-object v3, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_width:I

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(Landroid/content/Context;I)I

    move-result v3

    .line 237
    iget-object v4, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/xiaopeng/xpui/R$dimen;->x_compat_app_panel_height:I

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setX(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setY(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setWidth(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setHeight(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    const v0, 0x800013

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setGravity(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setX(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setY(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setWidth(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setHeight(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;->setGravity(I)Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    :goto_0
    return-void
.end method

.method initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V
    .locals 1

    .line 251
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V

    .line 252
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->setAutoVisibleEnableOnPause(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 255
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;->setAutoVisibleEnableOnPause(Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result p1

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;->mActivity:Landroid/app/Activity;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    return-void
.end method
