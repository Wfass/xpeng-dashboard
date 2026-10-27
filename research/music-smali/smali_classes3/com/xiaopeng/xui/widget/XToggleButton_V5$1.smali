.class Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;
.super Ljava/lang/Object;
.source "XToggleButton_V5.java"

# interfaces
.implements Lapr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XToggleButton_V5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XToggleButton_V5;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XToggleButton_V5;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XToggleButton_V5;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XToggleButton_V5;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->access$000(Lcom/xiaopeng/xui/widget/XToggleButton_V5;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XToggleButton_V5;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->access$100(Lcom/xiaopeng/xui/widget/XToggleButton_V5;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XToggleButton_V5;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XToggleButton_V5;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->access$100(Lcom/xiaopeng/xui/widget/XToggleButton_V5;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XToggleButton_V5$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lds;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XToggleButton_V5;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
