.class public Lcom/xiaopeng/musicradio/datalist/c;
.super Ljava/lang/Object;
.source "DataHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/datalist/c$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

.field private g:Lcom/xiaopeng/musicradio/datalist/d;

.field private h:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

.field private i:Lcom/xiaopeng/musicradio/datalist/i;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/c;->e:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/datalist/c$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/c;I)I
    .locals 0

    .line 12
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->b:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)Lcom/xiaopeng/musicradio/datalist/DataListPresenter;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->h:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/datalist/d;)Lcom/xiaopeng/musicradio/datalist/d;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->g:Lcom/xiaopeng/musicradio/datalist/d;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/datalist/i;)Lcom/xiaopeng/musicradio/datalist/i;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->i:Lcom/xiaopeng/musicradio/datalist/i;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/c;Lcom/xiaopeng/musicradio/widget/recyclerview/i;)Lcom/xiaopeng/musicradio/widget/recyclerview/i;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/c;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/datalist/c;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->c:Z

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/c;->e:Ljava/util/HashMap;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/c;->e:Ljava/util/HashMap;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/c;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/c;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/c;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/c;->c:Z

    return v0
.end method

.method public c()Lcom/xiaopeng/musicradio/widget/recyclerview/i;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/c;->f:Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    return-object v0
.end method

.method public d()Lcom/xiaopeng/musicradio/datalist/d;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/c;->g:Lcom/xiaopeng/musicradio/datalist/d;

    return-object v0
.end method
