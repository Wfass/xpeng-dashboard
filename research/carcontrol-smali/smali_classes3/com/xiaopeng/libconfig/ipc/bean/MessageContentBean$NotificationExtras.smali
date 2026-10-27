.class public Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;
.super Ljava/lang/Object;
.source "MessageContentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationExtras"
.end annotation


# instance fields
.field iconPicUrlDay:Ljava/lang/String;

.field iconPicUrlNight:Ljava/lang/String;

.field majorPriority:I

.field messageType:Ljava/lang/String;

.field template:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconPicUrlDay()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->iconPicUrlDay:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPicUrlNight()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->iconPicUrlNight:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorPriority()I
    .locals 1

    .line 548
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->majorPriority:I

    return v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->template:I

    return v0
.end method

.method public setIconPicUrlDay(Ljava/lang/String;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->iconPicUrlDay:Ljava/lang/String;

    return-void
.end method

.method public setIconPicUrlNight(Ljava/lang/String;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->iconPicUrlNight:Ljava/lang/String;

    return-void
.end method

.method public setMajorPriority(I)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->majorPriority:I

    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->messageType:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MessageContentBean$NotificationExtras;->template:I

    return-void
.end method
