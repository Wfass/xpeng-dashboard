.class public Lcom/xiaopeng/devtools/view/main/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private Qf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private nH()V
    .locals 5

    .line 73
    const v0, 0x7f090376

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 74
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f100134

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 75
    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 78
    const v1, 0x7f09019e

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 79
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    .line 80
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 83
    const v2, 0x7f090361

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 84
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    .line 86
    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/main/MainActivity;->finish()V

    .line 99
    return-void

    .line 87
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const p1, 0x7f0c004d

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/main/MainActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 46
    const-string v0, "application/vnd.android.bugreport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/main/MainActivity;->Qf:Ljava/util/ArrayList;

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/main/MainActivity;->Qf:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/main/MainActivity;->Qf:Ljava/util/ArrayList;

    .line 53
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/main/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 58
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 64
    const v1, 0x7f090037

    if-ne v0, v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/main/MainActivity;->nH()V

    .line 66
    const/4 p1, 0x1

    return p1

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
