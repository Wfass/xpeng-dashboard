.class public Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;
.super Ljava/lang/Object;
.source "DuiSemanticBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;
    }
.end annotation


# instance fields
.field private musicSearchPlay:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "music_search_play"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicSearchPlay()Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->musicSearchPlay:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    return-object v0
.end method

.method public setMusicSearchPlay(Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean;->musicSearchPlay:Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;

    return-void
.end method
