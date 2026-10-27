.class Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$6;
.super Ljava/lang/Object;
.source "NewSongLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->delayUpdateState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$6;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout$6;->a:Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/detail/NewSongLayout;->updatePlayState()V

    return-void
.end method
