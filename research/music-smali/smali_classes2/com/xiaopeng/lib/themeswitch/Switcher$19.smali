.class Lcom/xiaopeng/lib/themeswitch/Switcher$19;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;


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

.field final synthetic val$updateRunnableList:Ljava/util/ArrayList;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$19;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$19;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$19;->val$updateRunnableList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoadFinish(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 843
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/Switcher$19$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/themeswitch/Switcher$19$1;-><init>(Lcom/xiaopeng/lib/themeswitch/Switcher$19;Landroid/graphics/drawable/Drawable;)V

    .line 849
    iget-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$19;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$19;->val$updateRunnableList:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$1600(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method
