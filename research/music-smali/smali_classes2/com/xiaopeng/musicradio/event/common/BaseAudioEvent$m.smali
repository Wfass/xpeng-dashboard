.class public Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$m;
.super Ljava/lang/Object;
.source "BaseAudioEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$m;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$m;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method
