.class Lcom/xiaopeng/xui/widget/XShadowLayout$1;
.super Ljava/lang/Object;
.source "XShadowLayout.java"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XShadowLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XShadowLayout;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XShadowLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XShadowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XShadowLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->access$000(Lcom/xiaopeng/xui/widget/XShadowLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XShadowLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->access$000(Lcom/xiaopeng/xui/widget/XShadowLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XShadowLayout;->setShadowColorId(I)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XShadowLayout$1;->this$0:Lcom/xiaopeng/xui/widget/XShadowLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XShadowLayout;->invalidate()V

    :cond_0
    return-void
.end method
