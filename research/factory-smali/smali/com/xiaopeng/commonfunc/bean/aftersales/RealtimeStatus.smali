.class public Lcom/xiaopeng/commonfunc/bean/aftersales/RealtimeStatus;
.super Ljava/lang/Object;
.source "RealtimeStatus.java"


# instance fields
.field private final mStatus:[Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;
    .param p2, "mStatus"    # [Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/RealtimeStatus;->mTitle:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/RealtimeStatus;->mStatus:[Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getStatus()[Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/RealtimeStatus;->mStatus:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/RealtimeStatus;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/RealtimeStatus;->mStatus:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 27
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/aftersales/RealtimeStatus;->mTitle:Ljava/lang/String;

    .line 19
    return-void
.end method
