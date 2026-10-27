.class Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5$1;
.super Ljava/lang/Object;
.source "DrawableLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;

.field final synthetic val$drawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;[Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5$1;->this$0:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5$1;->val$drawables:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5$1;->this$0:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;

    iget-object v0, v0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;->val$callback:Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5$1;->val$drawables:[Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;->onDrawableLoadFinish([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
