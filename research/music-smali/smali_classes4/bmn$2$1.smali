.class Lbmn$2$1;
.super Ljava/lang/Object;
.source "ProgramCollectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmn$2;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmn$2;


# direct methods
.method constructor <init>(Lbmn$2;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lbmn$2$1;->a:Lbmn$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ProgramCollectManager"

    const-string v1, "saveAsync setAlbumIdFromApi"

    .line 154
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v0

    iget-object v1, p0, Lbmn$2$1;->a:Lbmn$2;

    iget-object v1, v1, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0, v1}, Lbmq;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    .line 156
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    iget-object v1, p0, Lbmn$2$1;->a:Lbmn$2;

    iget-object v1, v1, Lbmn$2;->a:Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {v0, v1}, Lbmp;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    return-void
.end method
