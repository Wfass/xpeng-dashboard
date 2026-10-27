.class Lcom/xiaopeng/lib/themeswitch/Switcher$10$1;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher$10;->onDrawableLoadFinish(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$10;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher$10;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$10$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$10;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$10$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$10$1;->this$1:Lcom/xiaopeng/lib/themeswitch/Switcher$10;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/Switcher$10;->val$view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$10$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
