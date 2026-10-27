.class Lbld$21;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbld;->prepareData(Ljava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lbld;


# direct methods
.method constructor <init>(Lbld;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 122
    iput-object p1, p0, Lbld$21;->e:Lbld;

    iput-object p2, p0, Lbld$21;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lbld$21;->b:Z

    iput-boolean p4, p0, Lbld$21;->c:Z

    iput-boolean p5, p0, Lbld$21;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 125
    iget-object v0, p0, Lbld$21;->e:Lbld;

    iget-object v0, v0, Lbld;->mPlayer:Lcom/xiaopeng/musicradio/player/h;

    iget-object v1, p0, Lbld$21;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lbld$21;->b:Z

    iget-boolean v3, p0, Lbld$21;->c:Z

    iget-boolean v4, p0, Lbld$21;->d:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/player/h;->prepareData(Ljava/lang/String;ZZZ)V

    return-void
.end method
