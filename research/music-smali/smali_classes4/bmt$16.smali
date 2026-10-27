.class Lbmt$16;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field final synthetic b:Lbmt;


# direct methods
.method constructor <init>(Lbmt;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lbmt$16;->b:Lbmt;

    iput-object p2, p0, Lbmt$16;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 416
    iget-object v0, p0, Lbmt$16;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    const-string v2, "key_cache_albumbena"

    invoke-virtual {v1, v2, v0}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
