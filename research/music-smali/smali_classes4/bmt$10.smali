.class Lbmt$10;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Lbry$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt;


# direct methods
.method constructor <init>(Lbmt;)V
    .locals 0

    .line 2247
    iput-object p1, p0, Lbmt$10;->a:Lbmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 2250
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    iget-object v1, p0, Lbmt$10;->a:Lbmt;

    invoke-virtual {v1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lbmt$10;->a:Lbmt;

    invoke-virtual {v1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbmt$10;->a:Lbmt;

    invoke-virtual {v1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lbmp;->c(J)Z

    move-result v0

    return v0
.end method
