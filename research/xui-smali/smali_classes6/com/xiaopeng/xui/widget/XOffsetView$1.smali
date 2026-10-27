.class Lcom/xiaopeng/xui/widget/XOffsetView$1;
.super Ljava/lang/Object;
.source "XOffsetView.java"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XOffsetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XOffsetView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XOffsetView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XOffsetView;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XOffsetView$1;->this$0:Lcom/xiaopeng/xui/widget/XOffsetView;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XOffsetView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView$1;->this$0:Lcom/xiaopeng/xui/widget/XOffsetView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XOffsetView$1;->this$0:Lcom/xiaopeng/xui/widget/XOffsetView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XOffsetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$drawable;->x_btn_offset_selector:I

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XOffsetView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XOffsetView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void
.end method
