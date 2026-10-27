.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;
.super Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# instance fields
.field private Nn:Z

.field private No:Z

.field private Np:Landroid/os/Bundle;

.field private Nq:Landroid/os/UserManager;

.field private final Nr:Ljava/lang/String;

.field private final Ns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private Nt:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Ns:Ljava/util/HashSet;

    .line 61
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nt:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nr:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nr:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/preference/Preference;)V
    .locals 0

    .line 185
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nn:Z

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;Landroid/preference/Preference;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->a(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nn:Z

    return p1
.end method


# virtual methods
.method protected do(Ljava/lang/String;)Z
    .locals 2

    .line 223
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 224
    return v0

    .line 226
    :cond_0
    const-string v1, "restrictions_pin_set"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nq:Landroid/os/UserManager;

    .line 227
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 228
    :goto_1
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 130
    const/16 v0, 0x3015

    if-ne p1, v0, :cond_5

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Np:Landroid/os/Bundle;

    .line 132
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Np:Landroid/os/Bundle;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->No:Z

    .line 134
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 135
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nn:Z

    .line 136
    if-nez p1, :cond_0

    .line 137
    goto :goto_0

    :cond_0
    const-string p2, "pref"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 138
    :goto_0
    if-eqz p3, :cond_2

    .line 139
    invoke-virtual {p0, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    .line 140
    if-eqz p2, :cond_2

    .line 143
    instance-of p3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz p3, :cond_1

    const-string p3, "isChecked"

    .line 144
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 145
    const-string p3, "isChecked"

    .line 146
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 147
    move-object p3, p2

    check-cast p3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p3, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 150
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_2

    .line 152
    invoke-virtual {p2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->mZ()V

    .line 160
    :cond_4
    :goto_1
    return-void

    .line 163
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nq:Landroid/os/UserManager;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v0, "chsc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nn:Z

    .line 89
    const-string v0, "chrq"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->No:Z

    .line 90
    const-string v0, "rsmb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Np:Landroid/os/Bundle;

    .line 92
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->onPause()V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->do(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->a(Landroid/preference/Preference;)V

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nn:Z

    .line 117
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "chrq"

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->No:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Np:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "rsmb"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Np:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const-string v0, "chsc"

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->Nn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    :cond_1
    return-void
.end method
