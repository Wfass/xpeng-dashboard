.class Lcom/xiaopeng/xui/app/XPopPanel$1;
.super Ljava/lang/Object;
.source "XPopPanel.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/popPanelView/XPopPanelView$IPopPanelViewInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XPopPanel;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XPopPanel$TN;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPopPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayScreenId()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel;->getScreenId()I

    move-result v0

    return v0
.end method

.method public onVuiEventExecuted()V
    .locals 2

    const-string v0, "XPopPanel"

    const-string v1, "onVuiEventExecuted"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel;->handleUserEvent()V

    return-void
.end method
