.class Lcom/xiaopeng/xui/app/XPanelActivity$2;
.super Ljava/lang/Object;
.source "XPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XPanelActivity;->handleDismissEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPanelActivity;I)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPanelActivity$2;->this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

    iput p2, p0, Lcom/xiaopeng/xui/app/XPanelActivity$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$2;->val$type:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$2;->this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/ActivityUtils;->moveTaskToBack(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$2;->this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/ActivityUtils;->finish(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
