.class public Lcom/xiaopeng/xvs/xid/sync/api/SyncException;
.super Lcom/xiaopeng/xvs/xid/base/BaseException;
.source "SyncException.java"


# static fields
.field public static final ERROR_CODE_CAN_NOT_SYNC_DATA:I = 0x9c48

.field public static final ERROR_CODE_EMPTY_REMOTE_DATA:I = 0x9c47

.field public static final ERROR_CODE_SYNC_APP_ID_ERROR:I = 0x9c41

.field public static final ERROR_CODE_SYNC_CHANNEL_FATAL:I = 0x9c46

.field public static final ERROR_CODE_SYNC_DATABASE_FATAL:I = 0x9c45

.field public static final ERROR_CODE_SYNC_ILLEGAL_KEY:I = 0x9c43

.field public static final ERROR_CODE_SYNC_NO_LOGIN:I = 0x9c44

.field public static final ERROR_CODE_SYNC_SAVE_EMPTY:I = 0x9c42


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xvs/xid/base/BaseException;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xvs/xid/base/BaseException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xvs/xid/base/BaseException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/xvs/xid/sync/api/SyncException;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/xvs/xid/base/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u6570\u636e\u901a\u9053\u521b\u5efa\u5931\u8d25"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "\u6570\u636e\u52a0\u8f7d\u5931\u8d25"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "\u5f53\u524d\u8d26\u53f7\u672a\u767b\u5f55"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "\u5f53\u524dKey\u683c\u5f0f\u975e\u6cd5"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "\u5f53\u524d\u6570\u636e\u5df2\u540c\u6b65\uff0c\u6682\u65e0\u65b0\u6570\u636e\u4e0a\u4f20"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "\u5f53\u524dAppId\u4e0d\u5339\u914d"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x9c41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
