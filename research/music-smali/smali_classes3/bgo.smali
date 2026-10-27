.class public Lbgo;
.super Ljava/lang/Object;
.source "CategoryDetailBean.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lbgo;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 26
    iput p1, p0, Lbgo;->b:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lbgo;->a:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lbgo;->c:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 22
    iget v0, p0, Lbgo;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lbgo;->c:Z

    return v0
.end method
