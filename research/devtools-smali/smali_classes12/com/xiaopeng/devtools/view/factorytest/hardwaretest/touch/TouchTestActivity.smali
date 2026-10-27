.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;
.super Lcom/xiaopeng/devtools/view/AppBaseActivity;
.source "TouchTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;
    }
.end annotation


# instance fields
.field private Mo:I

.field private Mp:I

.field private Mq:[[Z

.field private Mr:[[Z

.field private Ms:[[Z

.field private Mt:I

.field private Mu:I

.field private Mv:I

.field private Mw:I

.field private Mx:I

.field private My:I

.field private Mz:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mz:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mr:[[Z

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mq:[[Z

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)[[Z
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Ms:[[Z

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->mR()Z

    move-result p0

    return p0
.end method

.method private init()V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 57
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    const/16 v0, 0x33

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    .line 59
    const/16 v0, 0x19

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    goto :goto_0

    .line 61
    :cond_0
    const/16 v0, 0x1b

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    .line 62
    const/16 v0, 0x31

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    .line 64
    :goto_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Z

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mq:[[Z

    .line 65
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Z

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mr:[[Z

    .line 67
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Z

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Ms:[[Z

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mt:I

    .line 70
    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mu:I

    .line 71
    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mv:I

    .line 72
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mw:I

    .line 73
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mx:I

    .line 74
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->My:I

    .line 75
    return-void
.end method

.method private mP()V
    .locals 2

    .line 78
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mq:[[Z

    .line 79
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mr:[[Z

    .line 80
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Ms:[[Z

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mt:I

    .line 82
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mu:I

    .line 83
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mv:I

    .line 84
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mw:I

    .line 85
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mx:I

    .line 86
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->My:I

    .line 87
    return-void
.end method

.method private mQ()V
    .locals 5

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    if-ge v1, v2, :cond_2

    .line 91
    move v2, v0

    :goto_1
    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    if-ge v2, v3, :cond_1

    .line 92
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->u(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Ms:[[Z

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    goto :goto_2

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Ms:[[Z

    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    .line 91
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method private mR()Z
    .locals 6

    .line 108
    nop

    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mo:I

    if-ge v2, v4, :cond_3

    .line 111
    move v4, v3

    move v3, v0

    :goto_1
    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mp:I

    if-ge v3, v5, :cond_2

    .line 112
    iget-object v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Ms:[[Z

    aget-object v5, v5, v2

    aget-boolean v5, v5, v3

    if-ne v5, v1, :cond_1

    .line 113
    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mr:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 111
    move v4, v1

    goto :goto_2

    .line 113
    :cond_0
    nop

    .line 111
    move v4, v0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    .line 117
    :cond_3
    return v3
.end method

.method private u(II)Z
    .locals 1

    .line 102
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mt:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mu:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mv:I

    if-eq p1, v0, :cond_1

    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mw:I

    if-eq p2, p1, :cond_1

    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mx:I

    if-eq p2, p1, :cond_1

    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->My:I

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->init()V

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->mP()V

    .line 146
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.xiaopeng.action.TOUCH_TEST_END"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mz:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    new-instance p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;

    invoke-direct {p1, p0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity$TouchView;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->setContentView(Landroid/view/View;)V

    .line 149
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->mQ()V

    .line 150
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mz:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->Mz:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 130
    const-string v0, "TouchTestActivity"

    const-string v1, "onKeyUp [%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->finish()V

    .line 136
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onResume()V

    .line 155
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    const-string v0, "touch panel diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/touch/TouchTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 163
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onStop()V

    .line 164
    return-void
.end method
