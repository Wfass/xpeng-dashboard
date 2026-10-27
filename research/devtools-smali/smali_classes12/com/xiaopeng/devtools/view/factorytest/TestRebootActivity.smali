.class public Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "TestRebootActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private Gi:Lcom/kyleduo/switchbutton/SwitchButton;

.field private Gj:Lcom/xiaopeng/devtools/presenter/factorytest/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/c;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/c;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gj:Lcom/xiaopeng/devtools/presenter/factorytest/c;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;)Lcom/kyleduo/switchbutton/SwitchButton;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    return-object p0
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 39
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->setContentView(I)V

    .line 40
    return-void
.end method

.method public fe()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 45
    const v0, 0x7f09037b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 46
    return-void
.end method

.method public ff()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gj:Lcom/xiaopeng/devtools/presenter/factorytest/c;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/c;->a(Lcom/xiaopeng/devtools/model/c/e$b;)V

    .line 61
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 89
    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p2, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setEnabled(Z)V

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gj:Lcom/xiaopeng/devtools/presenter/factorytest/c;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/c;->bX(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p2, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setEnabled(Z)V

    .line 94
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gj:Lcom/xiaopeng/devtools/presenter/factorytest/c;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/c;->bX(I)V

    .line 96
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/RebootPolicyEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    if-eqz p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/TestRebootActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setEnabled(Z)V

    .line 28
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 79
    return-void
.end method
