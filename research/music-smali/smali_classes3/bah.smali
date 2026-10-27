.class public abstract Lbah;
.super Ljava/lang/Object;
.source "MusicLoginUidCacheBase.java"


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lbah;)Ljava/util/LinkedList;
    .locals 0

    .line 17
    iget-object p0, p0, Lbah;->a:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic a(Lbah;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .line 17
    iput-object p1, p0, Lbah;->a:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic a(Lbah;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lbah;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoved:uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicLoginUidCache"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object v0

    invoke-virtual {p0}, Lbah;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lazt;->b(I)Lazs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lazs;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    new-instance v0, Lbah$1;

    invoke-direct {v0, p0, p1}, Lbah$1;-><init>(Lbah;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method
