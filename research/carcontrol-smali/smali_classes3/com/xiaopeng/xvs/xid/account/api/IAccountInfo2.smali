.class public interface abstract Lcom/xiaopeng/xvs/xid/account/api/IAccountInfo2;
.super Ljava/lang/Object;
.source "IAccountInfo2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xvs/xid/account/api/IAccountInfo2$UserType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final USER_DATA_ACCOUNT_USER_TYPE:Ljava/lang/String; = "user_type"

.field public static final USER_DATA_EXTRA_AVATAR:Ljava/lang/String; = "avatar"

.field public static final USER_DATA_EXTRA_MUSIC_VIP:Ljava/lang/String; = "music_vip"

.field public static final USER_DATA_EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final USER_DATA_EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final USER_DATA_EXTRA_UPDATE:Ljava/lang/String; = "update"

.field public static final USER_DATA_SYNC_SLOT_ALIAS:Ljava/lang/String; = "user_data_sync_slot_alias"

.field public static final USER_DATA_SYNC_SLOT_ID:Ljava/lang/String; = "user_data_sync_slot_id"

.field public static final USER_DATA_TRAFFIC_REMAIN_DATA:Ljava/lang/String; = "user_data_traffic_remain_data"

.field public static final USER_DATA_TRAFFIC_TOTAL_DATA:Ljava/lang/String; = "user_data_traffic_total_data"

.field public static final USER_DATA_WALLET_FREEZE_AMOUNT:Ljava/lang/String; = "user_data_wallet_freeze_amount"

.field public static final USER_DATA_WALLET_TOTAL_AMOUNT:Ljava/lang/String; = "wallet_total_amount"

.field public static final USER_DATA_WALLET_VALID_AMOUNT:Ljava/lang/String; = "user_data_wallet_valid_amount"

.field public static final USER_TYPE_DRIVER:I = 0x4

.field public static final USER_TYPE_OWNER:I = 0x1

.field public static final USER_TYPE_TEMP:I = 0x0

.field public static final USER_TYPE_TENANT:I = 0x3

.field public static final USER_TYPE_USER:I = 0x2

.field public static final USER_UID_TEMP:J = -0x1L


# direct methods
.method public static isUidValid(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract getAccount()Landroid/accounts/Account;
.end method

.method public abstract getAccountType()Lcom/xiaopeng/xvs/xid/account/api/AccountType;
.end method

.method public abstract getAvatar()Ljava/lang/String;
.end method

.method public abstract getUid()J
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getUserType()I
.end method

.method public abstract isUpdate()Z
.end method

.method public abstract setAccount(Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation
.end method

.method public abstract setAccountType(Lcom/xiaopeng/xvs/xid/account/api/AccountType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setAvatar(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation
.end method

.method public abstract setUid(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation
.end method

.method public abstract setUpdate(Z)Lcom/xiaopeng/xvs/xid/account/api/IAccountInfo2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update"
        }
    .end annotation
.end method

.method public abstract setUserName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation
.end method

.method public abstract setUserType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userType"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
