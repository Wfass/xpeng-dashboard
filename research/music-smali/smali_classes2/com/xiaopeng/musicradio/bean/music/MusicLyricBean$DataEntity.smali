.class public Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;
.super Ljava/lang/Object;
.source "MusicLyricBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation


# instance fields
.field private songLyric:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;->this$0:Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSongLyric()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;->songLyric:Ljava/lang/String;

    return-object v0
.end method

.method public setSongLyric(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/music/MusicLyricBean$DataEntity;->songLyric:Ljava/lang/String;

    return-void
.end method
