.class Lcom/xiaopeng/xui/app/XPopPanel$TN$3;
.super Ljava/lang/Object;
.source "XPopPanel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XPopPanel$TN;->configTouch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel$TN;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XPopPanel$TN;

    .line 510
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1300(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1400(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1400(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->getViewBound()Landroid/graphics/Rect;

    move-result-object v0

    .line 516
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1300(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Landroid/graphics/Region;

    move-result-object v1

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 518
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1500(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$TN$3;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$TN;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$1300(Lcom/xiaopeng/xui/app/XPopPanel$TN;)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/utils/OnComputeInternalInsetsListener;->setTouchRegion(Landroid/graphics/Region;)V

    .line 519
    return-void
.end method
