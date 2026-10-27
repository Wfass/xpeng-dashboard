.class public Lbms$a;
.super Ljava/lang/Object;
.source "ReadingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lbms$a;->a:Ljava/lang/String;

    const/16 v1, 0x14

    .line 111
    iput v1, p0, Lbms$a;->b:I

    const/4 v1, -0x1

    .line 112
    iput v1, p0, Lbms$a;->c:I

    .line 114
    iput v1, p0, Lbms$a;->d:I

    .line 115
    iput-object v0, p0, Lbms$a;->e:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lbms$a;->f:Ljava/util/List;

    .line 117
    iput v1, p0, Lbms$a;->g:I

    const/4 v2, 0x0

    .line 118
    iput-boolean v2, p0, Lbms$a;->h:Z

    .line 119
    iput-object v0, p0, Lbms$a;->i:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 120
    iput v1, p0, Lbms$a;->j:I

    .line 122
    iput-object v0, p0, Lbms$a;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lbms$a;
    .locals 0

    .line 132
    iput p1, p0, Lbms$a;->j:I

    return-object p0
.end method

.method public a(J)Lbms$a;
    .locals 0

    .line 172
    iput-wide p1, p0, Lbms$a;->m:J

    return-object p0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;
    .locals 0

    .line 147
    iput-object p1, p0, Lbms$a;->i:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbms$a;
    .locals 0

    .line 127
    iput-object p1, p0, Lbms$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lbms$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)",
            "Lbms$a;"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lbms$a;->f:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lbms$a;
    .locals 0

    .line 182
    iput-boolean p1, p0, Lbms$a;->h:Z

    return-object p0
.end method

.method public a()Lbms;
    .locals 14

    .line 197
    new-instance v13, Lbms;

    iget-object v1, p0, Lbms$a;->a:Ljava/lang/String;

    iget v2, p0, Lbms$a;->j:I

    iget v3, p0, Lbms$a;->c:I

    iget v4, p0, Lbms$a;->d:I

    iget v5, p0, Lbms$a;->b:I

    iget-object v6, p0, Lbms$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lbms$a;->i:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    iget-boolean v8, p0, Lbms$a;->h:Z

    iget-object v9, p0, Lbms$a;->f:Ljava/util/List;

    iget v10, p0, Lbms$a;->g:I

    iget-boolean v11, p0, Lbms$a;->k:Z

    iget-object v12, p0, Lbms$a;->l:Ljava/lang/String;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;IZLjava/lang/String;)V

    .line 198
    iget-wide v0, p0, Lbms$a;->m:J

    invoke-virtual {v13, v0, v1}, Lbms;->a(J)V

    .line 199
    iget-wide v0, p0, Lbms$a;->n:J

    invoke-virtual {v13, v0, v1}, Lbms;->b(J)V

    return-object v13
.end method

.method public b(I)Lbms$a;
    .locals 0

    .line 137
    iput p1, p0, Lbms$a;->b:I

    return-object p0
.end method

.method public b(J)Lbms$a;
    .locals 0

    .line 177
    iput-wide p1, p0, Lbms$a;->n:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lbms$a;
    .locals 0

    .line 142
    iput-object p1, p0, Lbms$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lbms$a;
    .locals 0

    .line 187
    iput-boolean p1, p0, Lbms$a;->k:Z

    return-object p0
.end method

.method public c(I)Lbms$a;
    .locals 0

    .line 157
    iput p1, p0, Lbms$a;->g:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lbms$a;
    .locals 0

    .line 192
    iput-object p1, p0, Lbms$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lbms$a;
    .locals 0

    .line 162
    iput p1, p0, Lbms$a;->c:I

    return-object p0
.end method
