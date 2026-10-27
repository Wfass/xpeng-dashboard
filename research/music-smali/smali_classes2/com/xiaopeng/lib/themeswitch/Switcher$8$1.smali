.class Lcom/xiaopeng/lib/themeswitch/Switcher$8$1;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher$8;->onDrawableLoadFinish(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$8;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher$8;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$8$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$8;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$8$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$8$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$8;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/Switcher$8;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$8$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
