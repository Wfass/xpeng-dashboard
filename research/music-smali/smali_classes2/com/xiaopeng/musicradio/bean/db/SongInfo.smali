.class public Lcom/xiaopeng/musicradio/bean/db/SongInfo;
.super Ljava/lang/Object;
.source "SongInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2bL


# instance fields
.field private songName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/SongInfo;->songName:Ljava/lang/String;

    return-void
.end method
