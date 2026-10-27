.class public Lcom/xiaopeng/app/xpPackageInfo;
.super Ljava/lang/Object;
.source "xpPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;
    }
.end annotation


# static fields
.field public static final ACTIVITY_FLOATING:I = 0x2

.field public static final ACTIVITY_NORMAL:I = 0x0

.field public static final ACTIVITY_PADDING_DISABLE:I = -0x1

.field public static final ACTIVITY_PANEL:I = 0x1

.field public static final ADJUST_VOLUME_ALLOW:I = 0x1

.field public static final APP_TYPE_EDUCATION:I = 0x5

.field public static final APP_TYPE_GAME:I = 0x3

.field public static final APP_TYPE_INFO:I = 0x4

.field public static final APP_TYPE_KARAOKE:I = 0x7

.field public static final APP_TYPE_MUSIC:I = 0x1

.field public static final APP_TYPE_OTHER:I = 0x0

.field public static final APP_TYPE_TOOL:I = 0x6

.field public static final APP_TYPE_VIDEO:I = 0x2

.field public static final APP_TYPE_XPAD:I = 0x8

.field public static final CONTROL_CAR_KEYEVENT:I = 0x2

.field public static final CONTROL_JOYSTICK_MOCK:I = 0x4

.field public static final CONTROL_STEERING_WHEEL:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/app/xpPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_GEAR_LEVEL_D:I = 0x1

.field public static final FLAG_GEAR_LEVEL_N:I = 0x2

.field public static final FLAG_GEAR_LEVEL_P:I = 0x8

.field public static final FLAG_GEAR_LEVEL_R:I = 0x4

.field public static final FLAG_SCREEN_DIALOG:I = 0x8

.field public static final FLAG_SCREEN_INFOFLOW:I = 0x2

.field public static final FLAG_SCREEN_NAVIGATION:I = 0x4

.field public static final FLAG_SCREEN_STATUS:I = 0x1

.field public static final GEAR_LEVEL_D:I = 0x1

.field public static final GEAR_LEVEL_N:I = 0x2

.field public static final GEAR_LEVEL_P:I = 0x4

.field public static final GEAR_LEVEL_R:I = 0x3

.field public static final GRANT_APP_PERMISSION:I = 0x1

.field public static final GRANT_SENSITIVE_PERMISSION:I = 0x4

.field public static final GRANT_USB_PERMISSION:I = 0x2

.field public static final MIRROR_NOT_SUPPORT:I = 0x0

.field public static final MIRROR_SUPPORT:I = 0x1

.field public static final MODE_EXECUTE_GAME:I = 0x1

.field public static final MODE_EXECUTE_NORMAL:I = 0x0

.field public static final MODE_MULTISCREEN_CLONE:I = 0x1

.field public static final MODE_MULTISCREEN_TRANSFER:I = 0x0

.field public static final NAV_KEY_BACK:I = 0x1

.field public static final NAV_KEY_DEFAULT:I = 0x0

.field public static final NAV_KEY_MENU:I = 0x2

.field public static final NOTIFICATION_SHOW_MED:I = 0x1

.field public static final NOTIFICATION_SHOW_NONE:I = 0x0

.field public static final PERMISSION_DEFAULT:I = 0x0

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_DENIED_AND_STOP_CHECK:I = 0x2

.field public static final PERMISSION_GRANTED:I = 0x1

.field public static final WINDOW_FLAG_FULLSCREEN:I = 0x1

.field public static final WINDOW_FLAG_PRIMARY:I = 0x2

.field public static final WINDOW_FLAG_SECONDARY:I = 0x4

.field public static final XP_INSTALL_PERMISSION:Ljava/lang/String; = "persist.sys.3rdapp.installpermission"

.field public static final XP_KEY_GAME_MODE_FLAG:Ljava/lang/String; = "xp.key.gamemode.flag"


# instance fields
.field public activityPaddingBackgrounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;",
            ">;"
        }
    .end annotation
.end field

.field public activityType:I

.field public adjustVolumeValue:I

.field public apkSignInfo:Ljava/lang/String;

.field public appBarFlags:I

.field public appType:I

.field public aspectRatioForLandscape:F

.field public aspectRatioForPortrait:F

.field public backgroundStatus:I

.field public controlFlags:I

.field public densityDpi:I

.field public enableVisualizer:I

.field public executeMode:I

.field public floatingWindow:I

.field public fontScale:F

.field public gameImageUri:Ljava/lang/String;

.field public gearLevel:I

.field public gearLevelFlags:I

.field public installPermission:I

.field public keyEvent:Ljava/lang/String;

.field public limitFullScreenInDGear:I

.field public maxAspectRatio:F

.field public mediaArtistKey:Ljava/lang/String;

.field public mediaTitleKey:Ljava/lang/String;

.field public moduleAuthFlags:J

.field public multiscreenMode:I

.field public navigation:I

.field public navigationKey:I

.field public notificationFlag:I

.field public orientation:I

.field public packageName:Ljava/lang/String;

.field public paddingBackground:I

.field public paddingBackgroundInner:I

.field public paddingBackgroundInnerNight:I

.field public permissionGrant:I

.field public permissionGroup:Ljava/lang/String;

.field public realPackageName:Ljava/lang/String;

.field public relaunchChanges:I

.field public requestAudioFocus:I

.field public screenAdaption:I

.field public screenFlag:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenLevelFlags:I

.field public screenWidthDp:I

.field public supportGamePad:I

.field public supportMirror:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public windowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 303
    new-instance v0, Lcom/xiaopeng/app/xpPackageInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/app/xpPackageInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/app/xpPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->versionName:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->versionCode:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->executeMode:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->maxAspectRatio:F

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenFlag:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->permissionGrant:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->navigationKey:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->floatingWindow:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->fontScale:F

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenLayout:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->navigation:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->orientation:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenWidthDp:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenHeightDp:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->densityDpi:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->keyEvent:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->gearLevel:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->notificationFlag:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->permissionGroup:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->backgroundStatus:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->enableVisualizer:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenAdaption:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->limitFullScreenInDGear:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->mediaTitleKey:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->mediaArtistKey:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->installPermission:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->gearLevelFlags:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenLevelFlags:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->appBarFlags:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->requestAudioFocus:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->controlFlags:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->moduleAuthFlags:J

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->gameImageUri:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->supportGamePad:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->adjustVolumeValue:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->apkSignInfo:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->multiscreenMode:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->paddingBackground:I

    .line 232
    sget-object v0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->activityPaddingBackgrounds:Ljava/util/ArrayList;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->aspectRatioForLandscape:F

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->aspectRatioForPortrait:F

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->paddingBackgroundInner:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->paddingBackgroundInnerNight:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->relaunchChanges:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->activityType:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->windowType:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->realPackageName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/app/xpPackageInfo;->supportMirror:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/app/xpPackageInfo$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/app/xpPackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static isFullscreen(Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 335
    iget p0, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenFlag:I

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v3, 0x4

    and-int/2addr p0, v3

    if-ne p0, v3, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public static isXpGameModeEnable()Z
    .locals 2

    const-string/jumbo v0, "xp.key.gamemode.flag"

    const/4 v1, 0x0

    .line 324
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static packageInstallEnable(Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 349
    iget p0, p0, Lcom/xiaopeng/app/xpPackageInfo;->installPermission:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    const-string v0, "persist.sys.3rdapp.installpermission"

    .line 353
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setXpGameModeEnable(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string/jumbo v0, "xp.key.gamemode.flag"

    .line 328
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xpPackageInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " &screenFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " &screenWidthDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " &screenHeightDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 246
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->executeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->maxAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 251
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->permissionGrant:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->navigationKey:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->floatingWindow:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->fontScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 256
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenLayout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->navigation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenWidthDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenHeightDp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->densityDpi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->keyEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->gearLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->notificationFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->permissionGroup:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->backgroundStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->enableVisualizer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenAdaption:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->limitFullScreenInDGear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->mediaTitleKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->mediaArtistKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->installPermission:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->gearLevelFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->screenLevelFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->appBarFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->requestAudioFocus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->controlFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-wide v0, p0, Lcom/xiaopeng/app/xpPackageInfo;->moduleAuthFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->gameImageUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->supportGamePad:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->adjustVolumeValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->apkSignInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->multiscreenMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->paddingBackground:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->activityPaddingBackgrounds:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 287
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->aspectRatioForLandscape:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 288
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->aspectRatioForPortrait:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 289
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->paddingBackgroundInner:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->paddingBackgroundInnerNight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->relaunchChanges:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->activityType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->windowType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo;->supportMirror:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
