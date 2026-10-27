.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowRules"
.end annotation


# instance fields
.field bgClickable:I

.field filter:I

.field gearLever:Ljava/lang/String;

.field max:I

.field needCheck:I

.field priority:I

.field showTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgClickable()I
    .locals 1

    .line 494
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->bgClickable:I

    return v0
.end method

.method public getFilter()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->filter:I

    return v0
.end method

.method public getGearLever()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->gearLever:Ljava/lang/String;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 454
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->max:I

    return v0
.end method

.method public getNeedCheck()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->needCheck:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 450
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->priority:I

    return v0
.end method

.method public getShowTime()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->showTime:I

    return v0
.end method

.method public setBgClickable(I)V
    .locals 0

    .line 498
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->bgClickable:I

    return-void
.end method

.method public setFilter(I)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->filter:I

    return-void
.end method

.method public setGearLever(Ljava/lang/String;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->gearLever:Ljava/lang/String;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->max:I

    return-void
.end method

.method public setNeedCheck(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->needCheck:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 474
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->priority:I

    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 490
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$ShowRules;->showTime:I

    return-void
.end method
