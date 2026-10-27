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

    .line 695
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 4

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$000(Lcom/xiaopeng/xui/widget/XNumberPicker;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 699
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$000(Lcom/xiaopeng/xui/widget/XNumberPicker;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$102(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_number_picker_text_color:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$102(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 703
    :goto_0
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

    if-eqz v0, :cond_1

    .line 705
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 706
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 707
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->access$202(Lcom/xiaopeng/xui/widget/XNumberPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XNumberPicker$1;->this$0:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->postInvalidate()V

    return-void
.end method
