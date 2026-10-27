.class Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$SuperPanelImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;
.source "XActivityTemplateExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityTemplate$SuperPanel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperPanelImpl"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
