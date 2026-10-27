.class public Landroid/app/Notification$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation


# static fields
.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroid/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 0

    .line 12161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12162
    iput-object p1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    .line 12163
    iput-object p2, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    .line 12164
    iput-object p4, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 12165
    iput-object p3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 12166
    iput-object p5, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    .line 12167
    iput-wide p6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-void
.end method

.method static getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "messages"

    .line 12250
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 12253
    array-length v3, v1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    .line 12256
    aget-object v7, v1, v6

    instance-of v7, v7, Landroid/os/Bundle;

    if-nez v7, :cond_1

    goto :goto_1

    .line 12260
    :cond_1
    aget-object v7, v1, v6

    check-cast v7, Landroid/os/Bundle;

    const-string/jumbo v8, "text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 12261
    aget-object v7, v4, v6

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_1
    if-eqz v5, :cond_4

    move-object v7, v4

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    move-object v7, v0

    :goto_2
    const-string v1, "on_read"

    .line 12273
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/app/PendingIntent;

    const-string v1, "on_reply"

    .line 12274
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/PendingIntent;

    const-string/jumbo v1, "remote_input"

    .line 12276
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/RemoteInput;

    const-string v1, "participants"

    .line 12278
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 12279
    array-length v1, v11

    if-eq v1, v2, :cond_6

    goto :goto_3

    .line 12283
    :cond_6
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    const-string/jumbo v1, "timestamp"

    .line 12287
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    :cond_7
    :goto_3
    return-object v0
.end method


# virtual methods
.method getBundleForUnreadConversation()Landroid/os/Bundle;
    .locals 8

    .line 12223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12225
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 12226
    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12228
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    array-length v3, v3

    new-array v4, v3, [Landroid/os/Parcelable;

    :goto_1
    if-ge v2, v3, :cond_1

    .line 12230
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 12231
    iget-object v6, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    aget-object v6, v6, v2

    const-string/jumbo v7, "text"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "author"

    .line 12232
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12233
    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "messages"

    .line 12235
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 12236
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "remote_input"

    .line 12237
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12239
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "on_reply"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12240
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "on_read"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12241
    iget-object v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const-string v2, "participants"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 12242
    iget-wide v1, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public getLatestTimestamp()J
    .locals 2

    .line 12219
    iget-wide v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .line 12174
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 2

    .line 12212
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParticipants()[Ljava/lang/String;
    .locals 1

    .line 12205
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 12198
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRemoteInput()Landroid/app/RemoteInput;
    .locals 1

    .line 12182
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mRemoteInput:Landroid/app/RemoteInput;

    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 12190
    iget-object v0, p0, Landroid/app/Notification$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
