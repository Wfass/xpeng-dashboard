.class Lbmt$8;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Lbry$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->pauseByLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

.field final synthetic b:Lbmt;


# direct methods
.method constructor <init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 0

    .line 2206
    iput-object p1, p0, Lbmt$8;->b:Lbmt;

    iput-object p2, p0, Lbmt$8;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 2209
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    iget-object v1, p0, Lbmt$8;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lbmt$8;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbmt$8;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lbmp;->c(J)Z

    move-result v0

    return v0
.end method
