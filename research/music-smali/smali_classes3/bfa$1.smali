.class Lbfa$1;
.super Ljava/lang/Object;
.source "MusicAisuggest.java"

# interfaces
.implements Lbdm$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfa;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lbfa;


# direct methods
.method constructor <init>(Lbfa;Ljava/lang/String;J)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbfa$1;->c:Lbfa;

    iput-object p2, p0, Lbfa$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lbfa$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 144
    iget-object v0, p0, Lbfa$1;->c:Lbfa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbfa;->a(Lbfa;Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;)Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    return-void
.end method

.method public a(Z)Z
    .locals 2

    .line 137
    iget-object p1, p0, Lbfa$1;->a:Ljava/lang/String;

    iget-wide v0, p0, Lbfa$1;->b:J

    invoke-static {p1, v0, v1}, Lbfb;->a(Ljava/lang/String;J)V

    .line 138
    iget-object p1, p0, Lbfa$1;->c:Lbfa;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbfa;->a(Lbfa;Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;)Lcom/xiaopeng/musicradio/bean/music/xpbean/AisuggestSingleMusicBean;

    const/4 p1, 0x1

    return p1
.end method
