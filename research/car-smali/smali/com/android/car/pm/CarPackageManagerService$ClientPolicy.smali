.class Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
.super Ljava/lang/Object;
.source "CarPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/CarPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientPolicy"
.end annotation


# instance fields
.field private final blacklistsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final whitelistsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    .line 1091
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/pm/CarPackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/pm/CarPackageManagerService$1;

    .line 1088
    invoke-direct {p0}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 1088
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->removeBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->removeWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->replaceBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;[Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;
    .param p1, "x1"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->replaceWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;

    .line 1088
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private addToBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "blacklists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1127
    if-nez p1, :cond_0

    .line 1128
    return-void

    .line 1130
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1131
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1132
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1135
    :cond_2
    return-void
.end method

.method private addToWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "whitelists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1100
    if-nez p1, :cond_0

    .line 1101
    return-void

    .line 1103
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1104
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1105
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1108
    :cond_2
    return-void
.end method

.method private removeBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "blacklists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1138
    if-nez p1, :cond_0

    .line 1139
    return-void

    .line 1141
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1142
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1143
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    :cond_2
    return-void
.end method

.method private removeWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 5
    .param p1, "whitelists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1111
    if-nez p1, :cond_0

    .line 1112
    return-void

    .line 1114
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1115
    .local v2, "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    if-eqz v2, :cond_1

    .line 1116
    iget-object v3, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;->access$900(Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)Landroid/car/content/pm/AppBlockingPackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/car/content/pm/AppBlockingPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    .end local v2    # "wrapper":Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1119
    :cond_2
    return-void
.end method

.method private replaceBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 1
    .param p1, "blacklists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1122
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->blacklistsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToBlacklists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 1124
    return-void
.end method

.method private replaceWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V
    .locals 1
    .param p1, "whitelists"    # [Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;

    .line 1095
    iget-object v0, p0, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->whitelistsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1096
    invoke-direct {p0, p1}, Lcom/android/car/pm/CarPackageManagerService$ClientPolicy;->addToWhitelists([Lcom/android/car/pm/CarPackageManagerService$AppBlockingPackageInfoWrapper;)V

    .line 1097
    return-void
.end method
