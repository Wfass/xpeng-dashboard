.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;

.field private e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a:I

    .line 50
    iput-object p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a:I

    .line 55
    iput-object p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->b:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->c:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p4, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->d:Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;

    .line 61
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a:I

    .line 62
    iput-object p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->b:Ljava/lang/String;

    .line 63
    iput p3, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->c:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a:I

    .line 68
    iput-object p2, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->b:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->c:I

    .line 70
    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->e:Z

    return v0
.end method
