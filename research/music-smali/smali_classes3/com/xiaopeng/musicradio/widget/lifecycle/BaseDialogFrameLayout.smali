.class public Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;
.source "BaseDialogFrameLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;
    }
.end annotation


# instance fields
.field private mBackClass:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mBackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;",
            ">;"
        }
    .end annotation
.end field

.field private mLastView:Landroid/view/View;

.field private mRootDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackClass:Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackClass:Ljava/util/ArrayList;

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mRootDialogRef:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackClass:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackClass:Ljava/util/ArrayList;

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mRootDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mRootDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public popBackStack()Landroid/view/View;
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;

    .line 82
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackClass:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    check-cast v0, Landroid/view/View;

    .line 84
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->removeView(Landroid/view/View;)V

    .line 85
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 86
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mRootDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mRootDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public pushView(Landroid/view/View;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackClass:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mLastView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mLastView:Landroid/view/View;

    .line 67
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->addView(Landroid/view/View;)V

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;

    .line 69
    invoke-interface {v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;->setIDialogView(Lcom/xiaopeng/musicradio/widget/lifecycle/c;)V

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->mBackClass:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
