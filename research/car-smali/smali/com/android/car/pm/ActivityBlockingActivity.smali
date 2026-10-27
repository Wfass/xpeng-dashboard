.class public Lcom/android/car/pm/ActivityBlockingActivity;
.super Landroid/app/Activity;
.source "ActivityBlockingActivity.java"


# static fields
.field public static final EXTRA_BLOCKED_TASK:Ljava/lang/String; = "blocked_task"

.field public static final INTENT_KEY_BLOCKED_ACTIVITY:Ljava/lang/String; = "blocked_activity"

.field private static final INVALID_TASK_ID:I = -0x1


# instance fields
.field private mBlockedTaskId:I

.field private mBlockedTitle:Landroid/widget/TextView;

.field private mCar:Landroid/car/Car;

.field private mExitButton:Landroid/widget/Button;

.field private mExitRequested:Z

.field private mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/pm/ActivityBlockingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/ActivityBlockingActivity;

    .line 46
    iget-boolean v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitRequested:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/car/pm/ActivityBlockingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/ActivityBlockingActivity;

    .line 46
    invoke-direct {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->handleFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/pm/ActivityBlockingActivity;)Landroid/car/drivingstate/CarUxRestrictionsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/ActivityBlockingActivity;

    .line 46
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/ActivityBlockingActivity;
    .param p1, "x1"    # Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 46
    iput-object p1, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/car/pm/ActivityBlockingActivity;)Landroid/car/Car;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/ActivityBlockingActivity;

    .line 46
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/ActivityBlockingActivity;
    .param p1, "x1"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/car/pm/ActivityBlockingActivity;->handleUxRChange(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method private findHumanReadableLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "flattenComponentName"    # Ljava/lang/String;

    .line 164
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 165
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 168
    .local v1, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 169
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 170
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 171
    .local v3, "appLabel":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 172
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 179
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appLabel":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "CAR.AM"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const-string v3, "CAR.AM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find package for component name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_2
    return-object v1
.end method

.method private handleFinish()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitRequested:Z

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    return-void

    .line 196
    :cond_1
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    const-string v1, "package"

    .line 199
    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/content/pm/CarPackageManager;

    .line 200
    .local v0, "carPm":Landroid/car/content/pm/CarPackageManager;
    iget v1, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    invoke-virtual {v0, v1}, Landroid/car/content/pm/CarPackageManager;->restartTask(I)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v0    # "carPm":Landroid/car/content/pm/CarPackageManager;
    nop

    .line 206
    :try_start_1
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->finish()V

    .line 207
    monitor-exit p0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CAR.AM"

    const-string v2, "Car connection is not available."

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    monitor-exit p0

    return-void

    .line 207
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleUxRChange(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 149
    if-nez p1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->finish()V

    .line 155
    :cond_1
    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/car/pm/ActivityBlockingActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 70
    invoke-direct {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->handleFinish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->setContentView(I)V

    .line 68
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTitle:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$TDzhoQemd7-HzhSdE2ipKm3C35I;

    invoke-direct {v1, p0}, Lcom/android/car/pm/-$$Lambda$ActivityBlockingActivity$TDzhoQemd7-HzhSdE2ipKm3C35I;-><init>(Lcom/android/car/pm/ActivityBlockingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v0, Lcom/android/car/pm/ActivityBlockingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/car/pm/ActivityBlockingActivity$1;-><init>(Lcom/android/car/pm/ActivityBlockingActivity;)V

    invoke-static {p0, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    .line 99
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->unregisterListener()V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "CAR.AM"

    const-string v2, "Cannot unregisterListener"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mUxRManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    .line 142
    iget-object v0, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    .line 144
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/car/pm/ActivityBlockingActivity;->setIntent(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blocked_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "blockedActivity":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 112
    invoke-direct {p0, v0}, Lcom/android/car/pm/ActivityBlockingActivity;->findHumanReadableLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 111
    const v3, 0x7f060034

    invoke-virtual {p0, v3, v2}, Lcom/android/car/pm/ActivityBlockingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const-string v1, "CAR.AM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "CAR.AM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Blocking activity "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/pm/ActivityBlockingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "blocked_task"

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    .line 120
    iget-object v1, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mExitButton:Landroid/widget/Button;

    iget v3, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    if-ne v3, v5, :cond_1

    const/16 v4, 0x8

    nop

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    const-string v1, "CAR.AM"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/car/pm/ActivityBlockingActivity;->mBlockedTaskId:I

    if-ne v1, v5, :cond_2

    .line 122
    const-string v1, "CAR.AM"

    const-string v2, "Blocked task ID is not available. Hiding exit button."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    return-void
.end method
