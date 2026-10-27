.class Lcom/xiaopeng/xui/utils/XTouchUtils$1$1;
.super Ljava/lang/Object;
.source "XTouchUtils.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/utils/XTouchUtils$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/utils/XTouchUtils$1;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1$1;->this$0:Lcom/xiaopeng/xui/utils/XTouchUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 572
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1$1;->this$0:Lcom/xiaopeng/xui/utils/XTouchUtils$1;

    iget-object p1, p1, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$view:Landroid/view/View;

    iget-object p2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1$1;->this$0:Lcom/xiaopeng/xui/utils/XTouchUtils$1;

    iget p2, p2, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchWidth:I

    iget-object p3, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$1$1;->this$0:Lcom/xiaopeng/xui/utils/XTouchUtils$1;

    iget p3, p3, Lcom/xiaopeng/xui/utils/XTouchUtils$1;->val$expandTouchHeight:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XTouchUtils;->access$1700(Landroid/view/View;IIZ)V

    return-void
.end method
