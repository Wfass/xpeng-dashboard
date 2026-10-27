.class Lcom/xiaopeng/xui/lang/LangView$1;
.super Ljava/lang/Object;
.source "LangView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/lang/LangView;->addLongClickAction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/lang/LangView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/lang/LangView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/lang/LangView;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/LangView$1;->this$0:Lcom/xiaopeng/xui/lang/LangView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView$1;->this$0:Lcom/xiaopeng/xui/lang/LangView;

    iget-object v0, v0, Lcom/xiaopeng/xui/lang/LangView;->TAG:Ljava/lang/String;

    const-string v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView$1;->this$0:Lcom/xiaopeng/xui/lang/LangView;

    invoke-static {p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->getViewTextColorInt(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/LangView;->access$002(Lcom/xiaopeng/xui/lang/LangView;I)I

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView$1;->this$0:Lcom/xiaopeng/xui/lang/LangView;

    invoke-static {v0}, Lcom/xiaopeng/xui/lang/LangView;->access$100(Lcom/xiaopeng/xui/lang/LangView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_mark_land_modified:I

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 42
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->setViewTextColorInt(Landroid/view/View;I)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_mark_land_modifying:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 45
    invoke-static {p1, v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/ViewUtils;->setViewTextColorInt(Landroid/view/View;I)V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView$1;->this$0:Lcom/xiaopeng/xui/lang/LangView;

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/lang/LangView;->access$202(Lcom/xiaopeng/xui/lang/LangView;Landroid/view/View;)Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/lang/LangView$1;->this$0:Lcom/xiaopeng/xui/lang/LangView;

    invoke-static {v0}, Lcom/xiaopeng/xui/lang/LangView;->access$300(Lcom/xiaopeng/xui/lang/LangView;)Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->sendModifyRequest(Landroid/view/View;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method
