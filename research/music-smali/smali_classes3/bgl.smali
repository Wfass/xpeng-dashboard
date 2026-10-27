.class public Lbgl;
.super Ljava/lang/Object;
.source "XpPlayItemBean.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbgl;->b:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lbgl;->c:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lbgl;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lbgl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 53
    iput p1, p0, Lbgl;->e:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lbgl;->a:Landroid/content/Context;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lbgl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lbgl;->d:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 49
    iget v0, p0, Lbgl;->e:I

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 58
    iget-object v0, p0, Lbgl;->a:Landroid/content/Context;

    return-object v0
.end method
