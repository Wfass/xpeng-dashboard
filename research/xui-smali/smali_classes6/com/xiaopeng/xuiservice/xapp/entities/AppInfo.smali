.class public Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public intent:Landroid/content/Intent;

.field public title:Ljava/lang/CharSequence;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 21
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->user:Landroid/os/UserHandle;

    .line 22
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->title:Ljava/lang/CharSequence;

    .line 23
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    .line 24
    return-void
.end method

.method public static makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "cn"    # Landroid/content/ComponentName;

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 38
    return-object v0
.end method

.method public static makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 34
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->makeLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 27
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 28
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->user:Landroid/os/UserHandle;

    .line 29
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->title:Ljava/lang/CharSequence;

    .line 30
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo{component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
