.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;
.super Ljava/lang/Object;
.source "NavigationBar2.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onGlobalLayout$0(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->updateViewLayoutAfterWidthChanged()V

    .line 90
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NavigationBar2$2$SwZ8-K2uXfT21QZkisztqBLMbtk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NavigationBar2$2$SwZ8-K2uXfT21QZkisztqBLMbtk;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$2;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method
