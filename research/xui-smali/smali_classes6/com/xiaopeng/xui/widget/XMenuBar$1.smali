.class Lcom/xiaopeng/xui/widget/XMenuBar$1;
.super Ljava/lang/Object;
.source "XMenuBar.java"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XMenuBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XMenuBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XMenuBar;

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XMenuBar$1;->this$0:Lcom/xiaopeng/xui/widget/XMenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XMenuBar$1;->this$0:Lcom/xiaopeng/xui/widget/XMenuBar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XMenuBar$1;->this$0:Lcom/xiaopeng/xui/widget/XMenuBar;

    iget v1, v1, Lcom/xiaopeng/xui/widget/XMenuBar;->iconTintColorId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->setIconTintColor(I)V

    .line 76
    return-void
.end method
