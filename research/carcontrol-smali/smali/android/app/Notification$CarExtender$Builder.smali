.class public Landroid/app/Notification$CarExtender$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mLatestTimestamp:J

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipant:Ljava/lang/String;

.field private mReadPendingIntent:Landroid/app/PendingIntent;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    .line 12308
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Landroid/app/Notification$CarExtender$Builder;
    .locals 1

    .line 12320
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 9

    .line 12377
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 12378
    iget-object v0, p0, Landroid/app/Notification$CarExtender$Builder;->mParticipant:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 12379
    new-instance v0, Landroid/app/Notification$CarExtender$UnreadConversation;

    iget-object v3, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    iget-object v4, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    iget-wide v7, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/app/Notification$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0
.end method

.method public setLatestTimestamp(J)Landroid/app/Notification$CarExtender$Builder;
    .locals 0

    .line 12367
    iput-wide p1, p0, Landroid/app/Notification$CarExtender$Builder;->mLatestTimestamp:J

    return-object p0
.end method

.method public setReadPendingIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0

    .line 12351
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setReplyAction(Landroid/app/PendingIntent;Landroid/app/RemoteInput;)Landroid/app/Notification$CarExtender$Builder;
    .locals 0

    .line 12337
    iput-object p2, p0, Landroid/app/Notification$CarExtender$Builder;->mRemoteInput:Landroid/app/RemoteInput;

    .line 12338
    iput-object p1, p0, Landroid/app/Notification$CarExtender$Builder;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
