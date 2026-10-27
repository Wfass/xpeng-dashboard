.class Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$1;
.super Ljava/lang/Object;
.source "LluDanceActivityNew.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XTabsBar$OnTabsBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTabChange(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tabLayout",
            "index",
            "tabChange",
            "fromUser"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onTabChangeEnd(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tabLayout",
            "index",
            "tabChange",
            "fromUser"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;

    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->access$000(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)Lcom/xiaopeng/xui/widget/XViewPager;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xui/widget/XViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public onTabChangeStart(Lcom/xiaopeng/xui/widget/XTabLayout;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tabLayout",
            "index",
            "tabChange",
            "fromUser"
        }
    .end annotation

    return-void
.end method

.method public onTabsBarCloseClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;

    invoke-static {p1}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->access$100(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)V

    return-void
.end method
