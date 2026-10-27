.class public abstract Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.super Lcom/xiaopeng/musicradio/vui/a;
.source "MVPBaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/mvpbase/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a;",
        ">",
        "Lcom/xiaopeng/musicradio/vui/a;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/DialogInterface$OnDismissListener;

.field private b:Z

.field protected e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field protected f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

.field protected g:Landroid/view/ViewGroup;

.field protected h:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:I

.field l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/base/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/commonui/base/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/musicradio/vui/a;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance p2, Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->k:I

    .line 62
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->b:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_exit_dialog"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->l:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 211
    invoke-static {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a;->b(Lcom/xiaopeng/musicradio/widget/mvpbase/a;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->l:Landroid/content/BroadcastReceiver;

    .line 212
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lhu;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 83
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x7f6

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 90
    :cond_0
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->b:Z

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 94
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->g:Landroid/view/ViewGroup;

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->g:Landroid/view/ViewGroup;

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tag_dialog:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 96
    new-instance p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->h:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->h:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->registerSubView(Lcom/xiaopeng/musicradio/widget/lifecycle/e;)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->h:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->g()V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->b()I

    move-result p1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->h:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->i:Landroid/view/View;

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->l()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->j:Landroid/view/View;

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->j:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz p1, :cond_4

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->c()V

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->d()V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e()V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a(Ljava/lang/Object;)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->h()V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreate()V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->i_()V

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onCreateView()V

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->j()V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onResume()V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->h_()V

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportVisible()V

    .line 131
    :cond_4
    invoke-static {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a$a;->a(Lcom/xiaopeng/musicradio/widget/mvpbase/a;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/vui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lhu;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->l:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->j_()V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onSupportInvisible()V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->a()V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->r_()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroyView()V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->e:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->m()V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->f:Lcom/xiaopeng/musicradio/widget/lifecycle/i;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/i;->onDestroy()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    .line 167
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/view/ContextThemeWrapper;

    .line 172
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/commonui/base/a;

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/commonui/base/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/base/a;->b()V

    :cond_2
    return-void
.end method

.method protected abstract b()I
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method

.method protected abstract f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation
.end method

.method protected g()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public k()Landroid/view/View;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected l()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 195
    invoke-super {p0}, Lcom/xiaopeng/musicradio/vui/a;->onAttachedToWindow()V

    .line 196
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->a()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 201
    invoke-super {p0}, Lcom/xiaopeng/musicradio/vui/a;->onDetachedFromWindow()V

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->h()V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/a;->a:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method
