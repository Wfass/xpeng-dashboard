.class public Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/a;
.source "ImportCustomDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/mvpbase/a<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Lcom/xiaopeng/xui/widget/XTextView;

.field private m:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    sget v0, Lcom/xiaopeng/musicradio/common/k$h;->NewBaseDialog:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/mvpbase/a;-><init>(Landroid/content/Context;IZ)V

    .line 37
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->M(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->d:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->a:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->c()V

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->d()V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->e()V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    .line 46
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x11

    .line 48
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/a;
    .locals 1

    .line 62
    new-instance v0, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/a;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/a;-><init>()V

    return-object v0
.end method

.method protected b()I
    .locals 1

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->dialog_import_custom_layout:I

    return v0
.end method

.method protected c()V
    .locals 1

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->btn_close:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->b:Landroid/view/View;

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->import_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->c:Lcom/xiaopeng/xui/widget/XTextView;

    .line 74
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->import_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->m:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method protected d()V
    .locals 4

    .line 79
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 80
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->playlist_custom_import_text_1:I

    .line 81
    sget v2, Lcom/xiaopeng/musicradio/mine/a$b;->img_import_custom:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 83
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->playlist_custom_import_text_1_netease:I

    .line 84
    sget v2, Lcom/xiaopeng/musicradio/mine/a$b;->img_importsong_netease:I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->c:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->m:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected synthetic f()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->a()Lcom/xiaopeng/musicradio/mine/playlist/user/presenter/a;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/playlist/user/view/b;->dismiss()V

    :cond_0
    return-void
.end method
