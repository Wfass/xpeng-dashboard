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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XPanelActivity;

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

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$2;->this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/ActivityUtils;->moveTaskToBack(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPanelActivity$2;->this$0:Lcom/xiaopeng/xui/app/XPanelActivity;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/ActivityUtils;->finish(Landroid/app/Activity;)V

    .line 168
    nop

    .line 174
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
