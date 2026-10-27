.class Landroidx/databinding/l$1;
.super Ljava/lang/Object;
.source "ViewStubProxy.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/databinding/l;


# direct methods
.method constructor <init>(Landroidx/databinding/l;)V
    .locals 0

    .line 37
    iput-object p1, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3

    .line 40
    iget-object v0, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-static {v0, p2}, Landroidx/databinding/l;->a(Landroidx/databinding/l;Landroid/view/View;)Landroid/view/View;

    .line 41
    iget-object v0, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-static {v0}, Landroidx/databinding/l;->a(Landroidx/databinding/l;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->b:Landroidx/databinding/e;

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutResource()I

    move-result v2

    .line 41
    invoke-static {v1, p2, v2}, Landroidx/databinding/f;->a(Landroidx/databinding/e;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/databinding/l;->a(Landroidx/databinding/l;Landroidx/databinding/ViewDataBinding;)Landroidx/databinding/ViewDataBinding;

    .line 43
    iget-object v0, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/databinding/l;->a(Landroidx/databinding/l;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 45
    iget-object v0, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-static {v0}, Landroidx/databinding/l;->b(Landroidx/databinding/l;)Landroid/view/ViewStub$OnInflateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-static {v0}, Landroidx/databinding/l;->b(Landroidx/databinding/l;)Landroid/view/ViewStub$OnInflateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 47
    iget-object p1, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-static {p1, v1}, Landroidx/databinding/l;->a(Landroidx/databinding/l;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;

    .line 49
    :cond_0
    iget-object p1, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-static {p1}, Landroidx/databinding/l;->a(Landroidx/databinding/l;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->d()V

    .line 50
    iget-object p1, p0, Landroidx/databinding/l$1;->a:Landroidx/databinding/l;

    invoke-static {p1}, Landroidx/databinding/l;->a(Landroidx/databinding/l;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->b()V

    return-void
.end method
