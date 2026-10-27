.class public Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;
.super Lcom/xiaopeng/xui/app/XActivity;
.source "SecondControlActivity.java"


# static fields
.field private static final Fault_Fragment_Index:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XActivity;-><init>()V

    return-void
.end method

.method private replaceFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0165

    .line 52
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 53
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/XActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 24
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;->setContentView(I)V

    const p1, 0x7f0a0097

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTitleBarLight;

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageID"

    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 29
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;

    invoke-direct {v1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;-><init>()V

    const v2, 0x7f110127

    .line 30
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setTitle(I)V

    .line 31
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    .line 36
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity$1;-><init>(Lcom/xiaopeng/carcontrol/view/activity/SecondControlActivity;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTitleBarLight;->setOnTitleBarClickListener(Lcom/xiaopeng/xui/widget/XTitleBarLight$OnTitleBarClickListener;)V

    return-void
.end method
