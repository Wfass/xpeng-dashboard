.class abstract Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend;
.super Ljava/lang/Object;
.source "XActivityTemplateExtend.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;


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
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # I

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$NormalImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$NormalImpl;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$SuperPanelImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$SuperPanelImpl;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 77
    :pswitch_1
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$DialogImpl;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 75
    :pswitch_2
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$FullscreenImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$FullscreenImpl;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 71
    :pswitch_3
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityTemplateExtend$PanelImpl;-><init>(Landroid/app/Activity;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
