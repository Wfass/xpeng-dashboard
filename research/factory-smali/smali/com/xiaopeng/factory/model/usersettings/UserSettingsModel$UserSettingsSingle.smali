.class Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$UserSettingsSingle;
.super Ljava/lang/Object;
.source "UserSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserSettingsSingle"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;-><init>(Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$1;)V

    sput-object v0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$UserSettingsSingle;->INSTANCE:Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel$UserSettingsSingle;->INSTANCE:Lcom/xiaopeng/factory/model/usersettings/UserSettingsModel;

    return-object v0
.end method
