.class public Lcom/xiaopeng/musicradio/datalist/g;
.super Ljava/lang/Object;
.source "DataListResp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public final g:I

.field public h:J

.field public final i:J

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:I

.field public n:Z

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Lcom/xiaopeng/musicradio/datalist/f;->a:I

    iput v0, p0, Lcom/xiaopeng/musicradio/datalist/g;->j:I

    .line 43
    iget v0, p1, Lcom/xiaopeng/musicradio/datalist/f;->b:I

    iput v0, p0, Lcom/xiaopeng/musicradio/datalist/g;->k:I

    .line 44
    iget-boolean v0, p1, Lcom/xiaopeng/musicradio/datalist/f;->c:Z

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    .line 45
    iget-wide v0, p1, Lcom/xiaopeng/musicradio/datalist/f;->e:J

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/datalist/g;->i:J

    .line 46
    iget v0, p1, Lcom/xiaopeng/musicradio/datalist/f;->d:I

    iput v0, p0, Lcom/xiaopeng/musicradio/datalist/g;->g:I

    .line 47
    iget p1, p1, Lcom/xiaopeng/musicradio/datalist/f;->f:I

    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/g;->m:I

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;
    .locals 1

    .line 51
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/datalist/g;-><init>(Lcom/xiaopeng/musicradio/datalist/f;)V

    .line 52
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput-object p0, v0, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    .line 53
    iput-object p1, v0, Lcom/xiaopeng/musicradio/datalist/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/datalist/g;-><init>(Lcom/xiaopeng/musicradio/datalist/f;)V

    const/4 p0, 0x0

    .line 68
    iput-boolean p0, v0, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    .line 69
    iput-object p1, v0, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    .line 70
    iput-object p2, v0, Lcom/xiaopeng/musicradio/datalist/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/datalist/f;ZIIILjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;
    .locals 1

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/datalist/g;-><init>(Lcom/xiaopeng/musicradio/datalist/f;)V

    .line 80
    iput-boolean p1, v0, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    .line 81
    iput p2, v0, Lcom/xiaopeng/musicradio/datalist/g;->d:I

    .line 82
    iput p3, v0, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    .line 83
    iput p4, v0, Lcom/xiaopeng/musicradio/datalist/g;->f:I

    .line 84
    iput-object p5, v0, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    .line 85
    iput-object p6, v0, Lcom/xiaopeng/musicradio/datalist/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/datalist/f;ZIILjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 75
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;ZIIILjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/xiaopeng/musicradio/datalist/f;ZJLjava/util/List;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/datalist/g;-><init>(Lcom/xiaopeng/musicradio/datalist/f;)V

    .line 59
    iput-boolean p1, v0, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    .line 60
    iput-wide p2, v0, Lcom/xiaopeng/musicradio/datalist/g;->h:J

    .line 61
    iput-object p4, v0, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    .line 62
    iput-object p5, v0, Lcom/xiaopeng/musicradio/datalist/g;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataListResp{nextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalPage ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", more="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
