.class public Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "LteApnActivity.java"


# instance fields
.field private FI:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private static synthetic f(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string p0, "on"

    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/r;->cJ(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    const-string p0, "off"

    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/r;->cJ(Ljava/lang/String;)V

    .line 60
    :goto_0
    sget-object p0, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$LteApnActivity$rXh1ZUpRSjnkjzPXszbV7Q6t3YQ;->INSTANCE:Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$LteApnActivity$rXh1ZUpRSjnkjzPXszbV7Q6t3YQ;

    invoke-static {p0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public static synthetic lambda$q01M0pNXAuwc1eQE-HZA1Di0vUM(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;->f(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$rXh1ZUpRSjnkjzPXszbV7Q6t3YQ()V
    .locals 0

    invoke-static {}, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;->nZ()V

    return-void
.end method

.method private static synthetic nZ()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LteApnActivity"

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/utils/m;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 34
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;->setContentView(I)V

    .line 35
    return-void
.end method

.method public fe()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 40
    const v0, 0x7f090268

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;->FI:Landroid/widget/CheckBox;

    .line 41
    return-void
.end method

.method public ff()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;->FI:Landroid/widget/CheckBox;

    sget-object v1, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$LteApnActivity$q01M0pNXAuwc1eQE-HZA1Di0vUM;->INSTANCE:Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$LteApnActivity$q01M0pNXAuwc1eQE-HZA1Di0vUM;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 46
    const-string v0, "on"

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/usersettings/LteApnActivity;->FI:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method
