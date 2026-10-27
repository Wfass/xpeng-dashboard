.class public final Lbyj$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "BaseIndicatorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbyj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic a:Lbyj;


# direct methods
.method constructor <init>(Lbyj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lbyj$a;->a:Lbyj;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lbyj$a;->a:Lbyj;

    invoke-virtual {v0, p1}, Lbyj;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 68
    iget-object v0, p0, Lbyj$a;->a:Lbyj;

    invoke-virtual {v0, p1, p2, p3}, Lbyj;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lbyj$a;->a:Lbyj;

    invoke-virtual {v0, p1}, Lbyj;->onPageSelected(I)V

    return-void
.end method
