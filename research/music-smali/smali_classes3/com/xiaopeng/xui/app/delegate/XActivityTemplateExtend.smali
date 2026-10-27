.class abstract Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.super Ljava/lang/Object;
.source "XActivityTemplateExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$FullscreenImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$SuperPanelImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$NormalImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$BaseTemplate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XActivityTemplate"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/app/Activity;I)Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 69
    new-instance p1, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$NormalImpl;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$NormalImpl;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$SuperPanelImpl;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$SuperPanelImpl;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 77
    :cond_1
    new-instance p1, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 75
    :cond_2
    new-instance p1, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$FullscreenImpl;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$FullscreenImpl;-><init>(Landroid/app/Activity;)V

    return-object p1

    .line 71
    :cond_3
    new-instance p1, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;-><init>(Landroid/app/Activity;)V

    return-object p1
.end method


# virtual methods
.method abstract initDismiss(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;)V
.end method

.method abstract initDismissCauseGroup(Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;)V
.end method

.method abstract initWindowAttributes(Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;)V
.end method

.method abstract initWindowVisible(Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;)V
.end method
