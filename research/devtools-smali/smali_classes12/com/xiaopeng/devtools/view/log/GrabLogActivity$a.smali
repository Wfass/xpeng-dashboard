.class Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;
.super Landroid/os/AsyncTask;
.source "GrabLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/log/GrabLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;Lcom/xiaopeng/devtools/view/log/GrabLogActivity$1;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    return-void
.end method

.method public static synthetic lambda$YfgbG7tf9MsTLU1S5XCAKpC43DU(Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->nG()V

    return-void
.end method

.method private synthetic nG()V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->d(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->d(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 662
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000b9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 663
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 633
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 647
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->e(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)V

    .line 648
    sget-object p1, Lcom/xiaopeng/devtools/a;->nw:[Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/devtools/a;->nG:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/devtools/utils/g;->a([Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 649
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lh()Z

    move-result p1

    if-nez p1, :cond_0

    .line 650
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 651
    sget-object p1, Lcom/xiaopeng/devtools/a;->nB:[Ljava/lang/String;

    sget-object v0, Lcom/xiaopeng/devtools/a;->nG:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/devtools/utils/g;->a([Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 653
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 633
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 658
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 659
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->f(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$a$YfgbG7tf9MsTLU1S5XCAKpC43DU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/log/-$$Lambda$GrabLogActivity$a$YfgbG7tf9MsTLU1S5XCAKpC43DU;-><init>(Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 665
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 637
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->d(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/log/GrabLogActivity$a;->Qe:Lcom/xiaopeng/devtools/view/log/GrabLogActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/log/GrabLogActivity;->d(Lcom/xiaopeng/devtools/view/log/GrabLogActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f1001bc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 640
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/c;->ad(Landroid/content/Context;)V

    .line 643
    :cond_0
    return-void
.end method
