.class Lcom/xiaopeng/libtheme/ThemeWrapper$4$2;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    .line 553
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4$2;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4$2;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    iget-object v0, v0, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4$2;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    iget-object v1, v1, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$endColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 557
    return-void
.end method
