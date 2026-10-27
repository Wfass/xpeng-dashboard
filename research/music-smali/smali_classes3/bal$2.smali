.class Lbal$2;
.super Ljava/lang/Object;
.source "MusicUrlOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbal;->a(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

.field final synthetic b:Lbal;


# direct methods
.method constructor <init>(Lbal;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lbal$2;->b:Lbal;

    iput-object p2, p0, Lbal$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget-object v0, p0, Lbal$2;->b:Lbal;

    iget-object v0, v0, Lbal;->a:Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    iget-object v1, p0, Lbal$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method
