.class Lcom/xiaopeng/xui/widget/XCompoundButton$1;
.super Ljava/lang/Object;
.source "XCompoundButton.java"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XCompoundButton;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XCompoundButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton$1;->this$0:Lcom/xiaopeng/xui/widget/XCompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XCompoundButton$1;->this$0:Lcom/xiaopeng/xui/widget/XCompoundButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XCompoundButton$1;->this$0:Lcom/xiaopeng/xui/widget/XCompoundButton;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->access$000(Lcom/xiaopeng/xui/widget/XCompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method
