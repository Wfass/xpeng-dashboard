.class Landroidx/fragment/app/h$1;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/h;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/n;

.field final synthetic b:Landroidx/fragment/app/h;


# direct methods
.method constructor <init>(Landroidx/fragment/app/h;Landroidx/fragment/app/n;)V
    .locals 0

    .line 158
    iput-object p1, p0, Landroidx/fragment/app/h$1;->b:Landroidx/fragment/app/h;

    iput-object p2, p0, Landroidx/fragment/app/h$1;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object p1, p0, Landroidx/fragment/app/h$1;->a:Landroidx/fragment/app/n;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->a()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 162
    iget-object v0, p0, Landroidx/fragment/app/h$1;->a:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->c()V

    .line 163
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/h$1;->b:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1, v0}, Landroidx/fragment/app/v;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/v;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroidx/fragment/app/v;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
