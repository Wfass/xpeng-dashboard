.class Lcom/xiaopeng/libtheme/ThemeWrapper$6$1;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$6;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libtheme/ThemeWrapper$6;

    .line 609
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$6;

    iget-object v0, v0, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$6$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$6;

    iget-object v1, v1, Lcom/xiaopeng/libtheme/ThemeWrapper$6;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 613
    return-void
.end method
