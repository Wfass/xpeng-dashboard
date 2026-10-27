.class Lbld$13;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->setMeter(Lcom/xiaopeng/musicradio/player/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/o;

.field final synthetic b:Lbld;


# direct methods
.method constructor <init>(Lbld;Lcom/xiaopeng/musicradio/player/o;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lbld$13;->b:Lbld;

    iput-object p2, p0, Lbld$13;->a:Lcom/xiaopeng/musicradio/player/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 302
    iget-object v0, p0, Lbld$13;->b:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    iget-object v1, p0, Lbld$13;->a:Lcom/xiaopeng/musicradio/player/o;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/h;->a(Lcom/xiaopeng/musicradio/player/o;)V

    return-void
.end method
