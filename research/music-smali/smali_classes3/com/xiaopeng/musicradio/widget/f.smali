.class public Lcom/xiaopeng/musicradio/widget/f;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "MusicXDialog.java"


# instance fields
.field private a:Z

.field private b:Lcom/xiaopeng/musicradio/widget/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/f;->a:Z

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/f;->b:Lcom/xiaopeng/musicradio/widget/f;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 43
    iput-object p0, p0, Lcom/xiaopeng/musicradio/widget/f;->b:Lcom/xiaopeng/musicradio/widget/f;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/f;->b:Lcom/xiaopeng/musicradio/widget/f;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/f;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/widget/f$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/f$1;-><init>(Lcom/xiaopeng/musicradio/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/f;->a:Z

    return-void
.end method

.method public onFromToEightEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$q;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/f;->b:Lcom/xiaopeng/musicradio/widget/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/f;->a:Z

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/f;->b:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/f;->dismiss()V

    :cond_0
    return-void
.end method
