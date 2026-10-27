.class Lbld$19;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->prepareData(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lbld;


# direct methods
.method constructor <init>(Lbld;Ljava/lang/String;Z)V
    .locals 0

    .line 102
    iput-object p1, p0, Lbld$19;->c:Lbld;

    iput-object p2, p0, Lbld$19;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lbld$19;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lbld$19;->c:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    iget-object v1, p0, Lbld$19;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lbld$19;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/player/h;->prepareData(Ljava/lang/String;Z)V

    return-void
.end method
