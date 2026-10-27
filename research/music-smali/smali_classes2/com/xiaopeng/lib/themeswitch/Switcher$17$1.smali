.class Lcom/xiaopeng/lib/themeswitch/Switcher$17$1;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher$17;->onDrawableLoadFinish(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$17;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher$17;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$17$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$17;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$17$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$17$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$17;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/Switcher$17;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$17$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$17;

    iget-object v1, v1, Lcom/xiaopeng/lib/themeswitch/Switcher$17;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$17$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1700(Lcom/xiaopeng/lib/themeswitch/Switcher;ILandroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
