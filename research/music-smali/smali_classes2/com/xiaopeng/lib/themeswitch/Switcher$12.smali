.class Lcom/xiaopeng/lib/themeswitch/Switcher$12;
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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;I)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$12;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$12;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$12;->val$attrId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$12;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$12;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$12;->val$attrId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-void
.end method
