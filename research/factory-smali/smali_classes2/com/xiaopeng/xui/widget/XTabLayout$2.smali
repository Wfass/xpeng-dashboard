.class Lcom/xiaopeng/xui/widget/XTabLayout$2;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XTabLayout;

    .line 281
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private refreshIndicator(Z)V
    .locals 2
    .param p1, "change"    # Z

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    new-instance v1, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout$2$1;-><init>(Lcom/xiaopeng/xui/widget/XTabLayout$2;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$500(Lcom/xiaopeng/xui/widget/XTabLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$300(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v0

    if-gez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$2;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/xui/widget/XTabLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->access$302(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 314
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout$2;->refreshIndicator(Z)V

    .line 316
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout$2;->refreshIndicator(Z)V

    .line 323
    return-void
.end method
