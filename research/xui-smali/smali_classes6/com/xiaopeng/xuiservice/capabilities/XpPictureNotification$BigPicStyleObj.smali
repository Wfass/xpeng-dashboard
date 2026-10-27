.class public Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;
.super Ljava/lang/Object;
.source "XpPictureNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BigPicStyleObj"
.end annotation


# instance fields
.field protected mBigContentTitle:Ljava/lang/String;

.field protected mBigImage:I

.field protected mChannelDescription:Ljava/lang/String;

.field protected mChannelEnableVibrate:Z

.field protected mChannelId:Ljava/lang/String;

.field protected mChannelImportance:I

.field protected mChannelLockscreenVisibility:I

.field protected mChannelName:Ljava/lang/CharSequence;

.field protected mContentText:Ljava/lang/String;

.field protected mContentTitle:Ljava/lang/String;

.field protected mPriority:I

.field protected mSummaryText:Ljava/lang/String;

.field protected vId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "vId"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->vId:I

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;IZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentTitle"    # Ljava/lang/String;
    .param p2, "mContentText"    # Ljava/lang/String;
    .param p3, "mPriority"    # I
    .param p4, "mChannelId"    # Ljava/lang/String;
    .param p5, "mChannelName"    # Ljava/lang/CharSequence;
    .param p6, "mChannelDescription"    # Ljava/lang/String;
    .param p7, "mChannelImportance"    # I
    .param p8, "mChannelEnableVibrate"    # Z
    .param p9, "mChannelLockscreenVisibility"    # I
    .param p10, "mBigImage"    # I
    .param p11, "mBigContentTitle"    # Ljava/lang/String;
    .param p12, "mSummaryText"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mContentTitle:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mContentText:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mPriority:I

    .line 128
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelId:Ljava/lang/String;

    .line 129
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelName:Ljava/lang/CharSequence;

    .line 130
    iput-object p6, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelDescription:Ljava/lang/String;

    .line 131
    iput p7, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelImportance:I

    .line 132
    iput-boolean p8, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelEnableVibrate:Z

    .line 133
    iput p9, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelLockscreenVisibility:I

    .line 134
    iput p10, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mBigImage:I

    .line 135
    iput-object p11, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mBigContentTitle:Ljava/lang/String;

    .line 136
    iput-object p12, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mSummaryText:Ljava/lang/String;

    .line 137
    return-void
.end method


# virtual methods
.method public getmBigContentTitle()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mBigContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmBigImage()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mBigImage:I

    return v0
.end method

.method public getmChannelDescription()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getmChannelId()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getmChannelImportance()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelImportance:I

    return v0
.end method

.method public getmChannelLockscreenVisibility()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelLockscreenVisibility:I

    return v0
.end method

.method public getmChannelName()Ljava/lang/CharSequence;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getmContentText()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getmContentTitle()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mContentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmPriority()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mPriority:I

    return v0
.end method

.method public getmSummaryText()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mSummaryText:Ljava/lang/String;

    return-object v0
.end method

.method public getvId()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->vId:I

    return v0
.end method

.method public ismChannelEnableVibrate()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelEnableVibrate:Z

    return v0
.end method

.method public setmBigContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBigContentTitle"    # Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mBigContentTitle:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setmBigImage(I)V
    .locals 0
    .param p1, "mBigImage"    # I

    .line 216
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mBigImage:I

    .line 217
    return-void
.end method

.method public setmChannelDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "mChannelDescription"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelDescription:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setmChannelEnableVibrate(Z)V
    .locals 0
    .param p1, "mChannelEnableVibrate"    # Z

    .line 200
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelEnableVibrate:Z

    .line 201
    return-void
.end method

.method public setmChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mChannelId"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelId:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setmChannelImportance(I)V
    .locals 0
    .param p1, "mChannelImportance"    # I

    .line 192
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelImportance:I

    .line 193
    return-void
.end method

.method public setmChannelLockscreenVisibility(I)V
    .locals 0
    .param p1, "mChannelLockscreenVisibility"    # I

    .line 208
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelLockscreenVisibility:I

    .line 209
    return-void
.end method

.method public setmChannelName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "mChannelName"    # Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mChannelName:Ljava/lang/CharSequence;

    .line 177
    return-void
.end method

.method public setmContentText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentText"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mContentText:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setmContentTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentTitle"    # Ljava/lang/String;

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mContentTitle:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setmPriority(I)V
    .locals 0
    .param p1, "mPriority"    # I

    .line 160
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mPriority:I

    .line 161
    return-void
.end method

.method public setmSummaryText(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSummaryText"    # Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;->mSummaryText:Ljava/lang/String;

    .line 233
    return-void
.end method
