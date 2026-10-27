.class Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$FullscreenImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;
.source "XActivityTemplateExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityTemplate$FullScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullscreenImpl"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "mActivity"    # Landroid/app/Activity;

    .line 147
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;-><init>(Landroid/app/Activity;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;

    .line 152
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->onCreate(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method
