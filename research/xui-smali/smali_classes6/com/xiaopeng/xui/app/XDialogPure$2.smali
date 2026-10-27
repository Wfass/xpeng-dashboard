.class Lcom/xiaopeng/xui/app/XDialogPure$2;
.super Ljava/lang/Object;
.source "XDialogPure.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XDialogPure;->setOutTimeDismiss(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XDialogPure;

.field final synthetic val$millisecond:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XDialogPure;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XDialogPure;

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$2;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iput p2, p0, Lcom/xiaopeng/xui/app/XDialogPure$2;->val$millisecond:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouched()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$2;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v0, v0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$2;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v0, v0, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDialogPure$2;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object v1, v1, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/xiaopeng/xui/app/XDialogPure$2;->val$millisecond:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method
