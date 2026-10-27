.class Lcom/xiaopeng/xui/view/pag/XPagImageView$1;
.super Ljava/lang/Object;
.source "XPagImageView.java"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/view/pag/XPagImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/view/pag/XPagImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/view/pag/XPagImageView;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView$1;->this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView$1;->this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/pag/XPagImageView;->updateTheme()V

    .line 62
    return-void
.end method
