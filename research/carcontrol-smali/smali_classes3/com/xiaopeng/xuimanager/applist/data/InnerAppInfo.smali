.class public Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
.super Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
.source "InnerAppInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private launchIntent:Landroid/content/Intent;

.field public mIconChanged:Z

.field public mIconUpdatedByOut:Z

.field private operationDayIconValid:Z

.field private operationDockDayIconValid:Z

.field private operationDockIconValid:Z

.field private operationNightIconValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDayIconValid:Z

    .line 15
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationNightIconValid:Z

    .line 16
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockIconValid:Z

    .line 17
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockDayIconValid:Z

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->launchIntent:Landroid/content/Intent;

    .line 19
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    .line 20
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconUpdatedByOut:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDayIconValid:Z

    .line 15
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationNightIconValid:Z

    .line 16
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockIconValid:Z

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockDayIconValid:Z

    const/4 p2, 0x0

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->launchIntent:Landroid/content/Intent;

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconUpdatedByOut:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDayIconValid:Z

    .line 15
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationNightIconValid:Z

    .line 16
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockIconValid:Z

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockDayIconValid:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->launchIntent:Landroid/content/Intent;

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconUpdatedByOut:Z

    return-void
.end method


# virtual methods
.method public copy()Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    .locals 3

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copy failed e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InnerAppInfo"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public copyIconIfo(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 1

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 121
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    .line 122
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getDockerDayIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->setDockerDayIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "copyIconIfo failed e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "copyIconIfo"

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->launchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public iconChangedNotified()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    return-void
.end method

.method public isIconChanged()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    return v0
.end method

.method public isIconUpdatedByOut()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconUpdatedByOut:Z

    return v0
.end method

.method public isOperationDayIconValid()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDayIconValid:Z

    return v0
.end method

.method public isOperationDockDayIconValid()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockDayIconValid:Z

    return v0
.end method

.method public isOperationDockIconValid()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockIconValid:Z

    return v0
.end method

.method public isOperationNightIconValid()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationNightIconValid:Z

    return v0
.end method

.method public setDockerDayIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getDockerDayIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    .line 67
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setDockerDayIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    return-void
.end method

.method public setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getDockerIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    .line 61
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setDockerIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    return-void
.end method

.method public setIconUpdatedByOut(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconUpdatedByOut:Z

    return-void
.end method

.method public setLaunchIntent(Landroid/content/Intent;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->launchIntent:Landroid/content/Intent;

    return-void
.end method

.method public setOperationDayIconValid(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDayIconValid:Z

    return-void
.end method

.method public setOperationDockDayIconValid(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockDayIconValid:Z

    return-void
.end method

.method public setOperationDockIconValid(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationDockIconValid:Z

    return-void
.end method

.method public setOperationNightIconValid(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->operationNightIconValid:Z

    return-void
.end method

.method public setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    return-void
.end method

.method public setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->getStoreNightIcon()Lcom/xiaopeng/xuimanager/applist/data/AppIcon;

    move-result-object v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;->mIconChanged:Z

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->setStoreNightIcon(Lcom/xiaopeng/xuimanager/applist/data/AppIcon;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
