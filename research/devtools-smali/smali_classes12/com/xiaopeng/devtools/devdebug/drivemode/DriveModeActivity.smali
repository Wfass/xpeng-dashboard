.class public Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "DriveModeActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;
.implements Lcom/xiaopeng/devtools/devdebug/drivemode/c;


# instance fields
.field private qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

.field private qz:Lcom/xiaopeng/devtools/devdebug/drivemode/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bO(I)V
    .locals 3

    .line 76
    const-string v0, "DriveModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDriveMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-virtual {p1, v0, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->b(IZ)V

    .line 83
    goto :goto_0

    .line 88
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->b(IZ)V

    .line 89
    goto :goto_0

    .line 85
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->b(IZ)V

    .line 86
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->b(IZ)V

    .line 80
    nop

    .line 93
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bP(I)V
    .locals 3

    .line 106
    const-string v0, "DriveModeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 120
    const/4 p1, 0x3

    goto :goto_0

    .line 116
    :pswitch_0
    const/4 p1, 0x2

    .line 117
    goto :goto_0

    .line 113
    :pswitch_1
    const/4 p1, 0x4

    .line 114
    goto :goto_0

    .line 110
    :pswitch_2
    const/4 p1, 0x1

    .line 111
    nop

    .line 123
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.action.SET_DRIVE_MODEFROM_FACTORYTEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, "extra_boolean_remote_set_drive_mode_which"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fd()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 32
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->setContentView(I)V

    .line 33
    return-void
.end method

.method public fe()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 38
    const v0, 0x7f09037f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->setTitle([Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public ff()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qA:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->setOnTabSelectedListener(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;)V

    .line 46
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/b;-><init>(Lcom/xiaopeng/devtools/devdebug/drivemode/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qz:Lcom/xiaopeng/devtools/devdebug/drivemode/b;

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qz:Lcom/xiaopeng/devtools/devdebug/drivemode/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->onDestroy()V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onPause()V

    .line 64
    invoke-static {}, Lcom/xiaopeng/devtools/utils/q;->le()Lcom/xiaopeng/devtools/utils/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/q;->lf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 57
    invoke-static {}, Lcom/xiaopeng/devtools/utils/q;->le()Lcom/xiaopeng/devtools/utils/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/utils/q;->lf()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qz:Lcom/xiaopeng/devtools/devdebug/drivemode/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->fg()V

    .line 59
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 97
    const-string v0, "pref_select_drive_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    const-string p2, "pref_select_drive_mode"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 99
    const-string p2, "DriveModeActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedPreferenceChanged mode ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/DriveModeActivity;->qz:Lcom/xiaopeng/devtools/devdebug/drivemode/b;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->bQ(I)V

    .line 102
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onStart()V

    .line 52
    return-void
.end method
