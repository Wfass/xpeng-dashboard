.class Lcom/xiaopeng/libtheme/ThemeWrapper$5$1;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$5;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper$5;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$5;

    iget-object v0, v0, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$5$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$5;

    iget-object v1, v1, Lcom/xiaopeng/libtheme/ThemeWrapper$5;->val$endDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
