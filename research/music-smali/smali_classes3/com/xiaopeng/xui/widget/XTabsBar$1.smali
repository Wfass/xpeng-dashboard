.class Lcom/xiaopeng/xui/widget/XTabsBar$1;
.super Ljava/lang/Object;
.source "XTabsBar.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTabLayout$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabsBar;->initView(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabsBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabsBar;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabsBar$1;->this$0:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTabChange(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar$1;->this$0:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->access$000(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar$1;->this$0:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->access$000(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;->onInterceptTabChange(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTabChangeEnd(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar$1;->this$0:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->access$000(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar$1;->this$0:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->access$000(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;->onTabChangeEnd(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    :cond_0
    return-void
.end method

.method public onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar$1;->this$0:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->access$000(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabsBar$1;->this$0:Lcom/xiaopeng/xui/widget/XTabsBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabsBar;->access$000(Lcom/xiaopeng/xui/widget/XTabsBar;)Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;->onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V

    :cond_0
    return-void
.end method
