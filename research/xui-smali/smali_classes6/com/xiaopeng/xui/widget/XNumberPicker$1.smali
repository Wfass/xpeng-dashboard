.class Lcom/xiaopeng/xui/widget/XNumberPicker$1;
.super Ljava/lang/Object;
.source "XNumberPicker.java"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 700
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_number_picker_text_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$002(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XNumberPicker;->np_selectionDividerId:I

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 705
    .local v0, "selectionDivider":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 706
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 707
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 708
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$102(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postInvalidate()V

    .line 714
    return-void
.end method
