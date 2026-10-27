.class public Lcom/xiaopeng/musicradio/utils/t;
.super Ljava/lang/Object;
.source "DialogReference.java"


# instance fields
.field private a:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/utils/t;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/t;->a:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Dialog;)V
    .locals 2

    .line 13
    new-instance v0, Lcom/xiaopeng/musicradio/utils/t$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/utils/t$1;-><init>(Lcom/xiaopeng/musicradio/utils/t;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7f6

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/t;->a:Landroid/app/Dialog;

    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/t;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/t;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/t;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/t;->a:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
