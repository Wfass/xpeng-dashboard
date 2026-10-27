.class final Lcom/xiaopeng/carcontrol/provider/SettingsState;
.super Ljava/lang/Object;
.source "SettingsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SettingsState"

.field private static final NULL_VALUE:Ljava/lang/String; = "null"

.field private static final SETTINGS_TYPE_MASK:I = -0x10000000

.field static final SETTINGS_TYPE_PRIVATE:I = 0x2

.field static final SETTINGS_TYPE_QUICK:I = 0x0

.field private static final SETTINGS_TYPE_SHIFT:I = 0x1c

.field static final SETTINGS_TYPE_SYSTEM:I = 0x1

.field public static final VERSION_UNDEFINED:I = -0x1


# instance fields
.field private final mKey:I

.field private final mNullSetting:Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

.field private final mSettings:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance v0, Lcom/xiaopeng/carcontrol/provider/SettingsState$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v1, v2}, Lcom/xiaopeng/carcontrol/provider/SettingsState$1;-><init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mNullSetting:Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    .line 90
    iput p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mKey:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/provider/SettingsState;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mKey:I

    return p0
.end method

.method private static getTypeFromKey(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    ushr-int/lit8 p0, p0, 0x1c

    return p0
.end method

.method private static getUserIdFromKey(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const v0, 0xfffffff

    and-int/2addr p0, v0

    return p0
.end method

.method private hasSettingLocked(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static keyToString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->getTypeFromKey(I)I

    move-result p0

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->settingTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeKey(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "userId"
        }
    .end annotation

    shl-int/lit8 p0, p0, 0x1c

    or-int/2addr p0, p1

    return p0
.end method

.method private static settingTypeToString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SETTINGS_SYSTEM"

    return-object p0

    :cond_1
    const-string p0, "SETTINGS_QUICK"

    return-object p0
.end method


# virtual methods
.method public deleteSettingLocked(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->hasSettingLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNullSetting()Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mNullSetting:Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    return-object v0
.end method

.method getSettingLocked(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mNullSetting:Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    return-object p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    if-eqz p1, :cond_1

    .line 118
    new-instance v0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;-><init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;)V

    return-object v0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mNullSetting:Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    return-object p1
.end method

.method public getSettingNamesLocked()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "makeDefault"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;-><init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public updateSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "tag",
            "makeValue",
            "packageName"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->hasSettingLocked(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 130
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
