.class public Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountInfo"

.field public static final USER_DATA_ACCOUNT_TYPE:Ljava/lang/String; = "user_type"

.field public static final USER_DATA_AVATAR:Ljava/lang/String; = "avatar"

.field public static final USER_DATA_ENCRYPTED_PHONE:Ljava/lang/String; = "user_data_encrypted_phone"

.field public static final USER_DATA_MITU_OPEN_ID:Ljava/lang/String; = "mitu_openid"

.field public static final USER_DATA_MUSIC_VIP:Ljava/lang/String; = "music_vip"

.field public static final USER_DATA_NAME:Ljava/lang/String; = "name"

.field public static final USER_DATA_SYNC_GROUP_ID:Ljava/lang/String; = "user_data_sync_group_id"

.field public static final USER_DATA_SYNC_GROUP_NAME:Ljava/lang/String; = "user_data_sync_group_name"

.field public static final USER_DATA_SYNC_HABIT_DATA:Ljava/lang/String; = "user_data_sync_habit_data"

.field public static final USER_DATA_TRAFFIC_REMAIN_DATA:Ljava/lang/String; = "user_data_traffic_remain_data"

.field public static final USER_DATA_TRAFFIC_TOTAL_DATA:Ljava/lang/String; = "user_data_traffic_total_data"

.field public static final USER_DATA_UID:Ljava/lang/String; = "uid"

.field public static final USER_DATA_UPDATE:Ljava/lang/String; = "update"

.field public static final USER_DATA_WALLET_AVAILABLE_AMOUNT:Ljava/lang/String; = "user_data_wallet_available_amount"

.field public static final USER_DATA_WALLET_FREEZE_AMOUNT:Ljava/lang/String; = "user_data_wallet_freeze_amount"

.field public static final USER_DATA_WALLET_TOTAL_AMOUNT:Ljava/lang/String; = "wallet_total_amount"

.field public static final USER_UID_TEMP:J = -0x1L


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountManager",
            "account"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccountManager:Landroid/accounts/AccountManager;

    .line 53
    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccount:Landroid/accounts/Account;

    return-void
.end method

.method private getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

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
.method public getAccountType()Lcom/xiaopeng/xvs/xid/account/api/AccountType;
    .locals 6

    const-string v0, "AccountInfo"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "user_type"

    const-string v3, "1"

    .line 94
    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xvs/xid/account/api/AccountType;->values()[Lcom/xiaopeng/xvs/xid/account/api/AccountType;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 96
    invoke-static {}, Lcom/xiaopeng/xvs/xid/account/api/AccountType;->values()[Lcom/xiaopeng/xvs/xid/account/api/AccountType;

    move-result-object v3

    array-length v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v2, -0x1

    .line 97
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountType:throw new ArrayIndexOutOfBoundsException() index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xvs/xid/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_0

    :catch_1
    move-exception v2

    .line 100
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountType: parseInt e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xvs/xid/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v2, v1

    .line 102
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xvs/xid/account/api/AccountType;->values()[Lcom/xiaopeng/xvs/xid/account/api/AccountType;

    move-result-object v1

    aget-object v1, v1, v2

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountType: accountType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    const-string v0, "avatar"

    .line 82
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedPhone()Ljava/lang/String;
    .locals 1

    const-string v0, "user_data_encrypted_phone"

    .line 119
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccount:Landroid/accounts/Account;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncGroupId()Ljava/lang/String;
    .locals 1

    const-string v0, "user_data_sync_group_id"

    .line 154
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncGroupName()Ljava/lang/String;
    .locals 1

    const-string v0, "user_data_sync_group_name"

    .line 149
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficRemainData()Ljava/lang/String;
    .locals 1

    const-string v0, "user_data_traffic_remain_data"

    .line 129
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficTotalData()Ljava/lang/String;
    .locals 1

    const-string v0, "user_data_traffic_total_data"

    .line 124
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()J
    .locals 5

    const-string v0, "AccountInfo"

    :try_start_0
    const-string v1, "uid"

    const-string v2, "0"

    .line 68
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUid: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 72
    :goto_0
    invoke-static {v1, v2}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->isUidValid(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountType:throw new IllegalAccountTypeException() uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xvs/xid/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v1
.end method

.method public getWalletAvailableAmount()Ljava/lang/String;
    .locals 1

    const-string v0, "user_data_wallet_available_amount"

    .line 144
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWalletFreezeAmount()Ljava/lang/String;
    .locals 1

    const-string v0, "user_data_wallet_freeze_amount"

    .line 139
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWalletTotalAmount()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wallet_total_amount"

    .line 134
    invoke-direct {p0, v0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMusicVip()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "music_vip"

    const-string v2, "0"

    .line 110
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMusicVip: parseInt e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountInfo"

    invoke-static {v2, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public isUpdate()Z
    .locals 2

    const-string v0, "update"

    const-string v1, "1"

    .line 86
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUserData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->isUpdate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getAccountType()Lcom/xiaopeng/xvs/xid/account/api/AccountType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";isMusicVip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->isMusicVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";trafficTotalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getTrafficTotalData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";trafficRemainData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getTrafficRemainData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";walletTotalAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getWalletTotalAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";walletFreezeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getWalletFreezeAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";walletAvailableAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getWalletAvailableAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";syncGroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getSyncGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";syncGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->getSyncGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/accounts/Account;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/account/api/AccountInfo;->mAccount:Landroid/accounts/Account;

    return-void
.end method
