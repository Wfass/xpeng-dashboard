.class Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;
.super Ljava/lang/Object;
.source "XMediaGestureController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XMediaGestureController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$000(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;Landroid/content/Context;)V

    .line 38
    return-void
.end method
