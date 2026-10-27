.class Lbfa$4;
.super Ljava/lang/Object;
.source "MusicAisuggest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbfa;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lass;

.field final synthetic b:Lbfa;


# direct methods
.method constructor <init>(Lbfa;Lass;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lbfa$4;->b:Lbfa;

    iput-object p2, p0, Lbfa$4;->a:Lass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 244
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v1, p0, Lbfa$4;->a:Lass;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;)V

    return-void
.end method
