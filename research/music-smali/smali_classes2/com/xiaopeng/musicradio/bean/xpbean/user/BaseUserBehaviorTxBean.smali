.class public Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;
.super Ljava/lang/Object;
.source "BaseUserBehaviorTxBean.java"


# static fields
.field public static final BIZ_TYPE_ARTIST_LOVE:I = 0x1

.field public static final BIZ_TYPE_MUSIC_ALBUM_LOVE:I = 0x2

.field public static final BIZ_TYPE_MUSIC_BLUE:I = 0x4

.field public static final BIZ_TYPE_MUSIC_IMPORT_ALBUM:I = 0x3

.field public static final BIZ_TYPE_MUSIC_LOVE:I = 0x1

.field public static final BIZ_TYPE_MUSIC_SEARCH_ONE:I = 0x5

.field public static final BIZ_TYPE_READ_LOVE:I = 0x2


# instance fields
.field private bizId:Ljava/lang/String;

.field private bizType:I

.field private ts:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->bizType:I

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->bizId:Ljava/lang/String;

    .line 20
    iput-wide p3, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->ts:J

    return-void
.end method


# virtual methods
.method public getBizId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->bizType:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->ts:J

    return-wide v0
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->bizId:Ljava/lang/String;

    return-void
.end method

.method public setBizType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->bizType:I

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/user/BaseUserBehaviorTxBean;->ts:J

    return-void
.end method
