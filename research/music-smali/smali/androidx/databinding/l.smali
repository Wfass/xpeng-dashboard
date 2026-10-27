.class public Landroidx/databinding/l;
.super Ljava/lang/Object;
.source "ViewStubProxy.java"


# instance fields
.field private a:Landroid/view/ViewStub;

.field private b:Landroidx/databinding/ViewDataBinding;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewStub$OnInflateListener;

.field private e:Landroidx/databinding/ViewDataBinding;

.field private f:Landroid/view/ViewStub$OnInflateListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroidx/databinding/l$1;

    invoke-direct {v0, p0}, Landroidx/databinding/l$1;-><init>(Landroidx/databinding/l;)V

    iput-object v0, p0, Landroidx/databinding/l;->f:Landroid/view/ViewStub$OnInflateListener;

    .line 55
    iput-object p1, p0, Landroidx/databinding/l;->a:Landroid/view/ViewStub;

    .line 56
    iget-object p1, p0, Landroidx/databinding/l;->a:Landroid/view/ViewStub;

    iget-object v0, p0, Landroidx/databinding/l;->f:Landroid/view/ViewStub$OnInflateListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    return-void
.end method

.method static synthetic a(Landroidx/databinding/l;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 30
    iput-object p1, p0, Landroidx/databinding/l;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Landroidx/databinding/l;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;
    .locals 0

    .line 30
    iput-object p1, p0, Landroidx/databinding/l;->d:Landroid/view/ViewStub$OnInflateListener;

    return-object p1
.end method

.method static synthetic a(Landroidx/databinding/l;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    .line 30
    iput-object p1, p0, Landroidx/databinding/l;->a:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic a(Landroidx/databinding/l;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/databinding/l;->e:Landroidx/databinding/ViewDataBinding;

    return-object p0
.end method

.method static synthetic a(Landroidx/databinding/l;Landroidx/databinding/ViewDataBinding;)Landroidx/databinding/ViewDataBinding;
    .locals 0

    .line 30
    iput-object p1, p0, Landroidx/databinding/l;->b:Landroidx/databinding/ViewDataBinding;

    return-object p1
.end method

.method static synthetic b(Landroidx/databinding/l;)Landroid/view/ViewStub$OnInflateListener;
    .locals 0

    .line 30
    iget-object p0, p0, Landroidx/databinding/l;->d:Landroid/view/ViewStub$OnInflateListener;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/databinding/l;->b:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method

.method public a(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/databinding/l;->e:Landroidx/databinding/ViewDataBinding;

    return-void
.end method

.method public b()Landroid/view/ViewStub;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/databinding/l;->a:Landroid/view/ViewStub;

    return-object v0
.end method
