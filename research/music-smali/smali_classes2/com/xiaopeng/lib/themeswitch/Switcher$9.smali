.class Lcom/xiaopeng/lib/themeswitch/Switcher$9;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->doSwitch2Night(ZLjava/util/ArrayList;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

.field final synthetic val$attrId:I

.field final synthetic val$attrType:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/lang/String;ILandroid/view/View;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$attrType:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$attrId:I

    iput-object p4, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$attrType:Ljava/lang/String;

    const-string v1, "drawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$attrId:I

    invoke-static {v0, v1}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$9;->val$attrId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
