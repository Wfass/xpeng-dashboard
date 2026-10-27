.class Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;
.super Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.source "XActivityTemplateExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseTemplate"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "mActivity"    # Landroid/app/Activity;

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->mActivity:Landroid/app/Activity;

    .line 99
    return-void
.end method


# virtual methods
.method initDismiss(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;)V
    .locals 0
    .param p1, "dismiss"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;->mDismiss:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;

    .line 124
    return-void
.end method

.method initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V
    .locals 0
    .param p1, "causeGroup"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;->enableBackScene()V

    .line 112
    return-void
.end method

.method initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V
    .locals 0
    .param p1, "mBuilder"    # Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    .line 106
    return-void
.end method

.method initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V
    .locals 0
    .param p1, "activityWindowVisible"    # Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 103
    return-void
.end method
