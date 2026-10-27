.class Laqo$1;
.super Lbkv;
.source "ProgramAisuggest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqo;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laqo;


# direct methods
.method constructor <init>(Laqo;)V
    .locals 0

    .line 94
    iput-object p1, p0, Laqo$1;->a:Laqo;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openRdAlbum err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicAisuggest"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 94
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;

    invoke-virtual {p0, p1}, Laqo$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;)V
    .locals 2

    const-string v0, "MusicAisuggest"

    const-string v1, "openRdAlbum success!"

    .line 97
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lash$f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    invoke-direct {v0, p1}, Lash$f;-><init>(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {v0, p1}, Lash$f;->a(Z)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {v0, p1}, Lash$f;->b(Z)V

    .line 101
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    return-void
.end method
