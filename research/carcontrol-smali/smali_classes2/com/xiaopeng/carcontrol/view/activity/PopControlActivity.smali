.class public Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;
.super Lcom/xiaopeng/xui/app/XActivity;
.source "PopControlActivity.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;


# annotations
.annotation runtime Lcom/xiaopeng/xui/app/delegate/XActivityBind;
    value = 0x1
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopControlActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XActivity;-><init>()V

    return-void
.end method

.method private handleNewPageIntent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.xiaopeng.intent.action.xkey.user"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/XKeyControlFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_CUSTOM_DOOR_KEY_PANEL"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/DoorKeyControlFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_STEER_CONTROL_PANEL"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    :cond_4
    :goto_0
    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_VEHICLE_MILEAGE_PANEL"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 62
    new-instance p1, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;

    invoke-direct {p1}, Lcom/xiaopeng/carcontrol/view/fragment/VehicleMileageFragment;-><init>()V

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->replaceFragment(Landroidx/fragment/app/Fragment;)V

    :cond_5
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

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0165

    .line 69
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/XActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "PopControlActivity"

    const-string v0, "onCreate"

    .line 33
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0d001e

    .line 34
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pop_pageID"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->handleNewPageIntent(Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/app/XActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "PopControlActivity"

    const-string v1, "onNewIntent"

    .line 43
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "pop_pageID"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->handleNewPageIntent(Ljava/lang/String;)V

    return-void
.end method

.method public onPopControlPageEnd()V
    .locals 2

    const-string v0, "PopControlActivity"

    const-string v1, "onPopControlPageEnd"

    .line 75
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/activity/PopControlActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XActivityUtils;->finish(Landroid/app/Activity;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XActivityUtils;->finish(Landroid/app/Activity;)V

    return-void
.end method
