.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$1;
.super Ljava/lang/Object;
.source "QcSliderLayout.java"

# interfaces
.implements Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->refreshTheme()V

    .line 223
    return-void
.end method
