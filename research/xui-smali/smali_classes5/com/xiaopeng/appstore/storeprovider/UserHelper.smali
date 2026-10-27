.class Lcom/xiaopeng/appstore/storeprovider/UserHelper;
.super Ljava/lang/Object;
.source "UserHelper.java"


# static fields
.field public static final MU_ENABLED:Z = true

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_SYSTEM:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(I)I
    .locals 1
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 24
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static getCallingAppId()I
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/UserHelper;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserId()I
    .locals 1

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/UserHelper;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getUserId(I)I
    .locals 1
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 17
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method
