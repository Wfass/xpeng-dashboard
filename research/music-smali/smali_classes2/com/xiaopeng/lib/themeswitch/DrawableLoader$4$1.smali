.class Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4$1;
.super Ljava/lang/Object;
.source "DrawableLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;

.field final synthetic val$result:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4$1;->this$0:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4$1;->val$result:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4$1;->this$0:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;->val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4$1;->val$result:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;->onDrawableLoadFinish(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
