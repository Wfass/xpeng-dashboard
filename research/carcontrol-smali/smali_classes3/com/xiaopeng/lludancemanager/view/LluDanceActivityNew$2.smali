.class Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$2;
.super Ljava/lang/Object;
.source "LluDanceActivityNew.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;->access$200(Lcom/xiaopeng/lludancemanager/view/LluDanceActivityNew;)Lcom/xiaopeng/xui/widget/XTabsBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xui/widget/XTabsBar;->selectTab(IZ)V

    return-void
.end method
