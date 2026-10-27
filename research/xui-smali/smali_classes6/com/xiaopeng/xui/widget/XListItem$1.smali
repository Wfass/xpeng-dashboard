.class Lcom/xiaopeng/xui/widget/XListItem$1;
.super Ljava/lang/Object;
.source "XListItem.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XListItem;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XListItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XListItem;

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XListItem$1;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem$1;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XListItem;->access$000(Lcom/xiaopeng/xui/widget/XListItem;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XListItem$1;->this$0:Lcom/xiaopeng/xui/widget/XListItem;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XListItem;->access$100(Lcom/xiaopeng/xui/widget/XListItem;)V

    .line 92
    return-void
.end method
