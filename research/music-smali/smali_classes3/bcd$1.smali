.class Lbcd$1;
.super Ljava/lang/Object;
.source "KugouAlbumModel.java"

# interfaces
.implements Lbce$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcd;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lbcd;


# direct methods
.method constructor <init>(Lbcd;Ljava/lang/String;Z)V
    .locals 0

    .line 123
    iput-object p1, p0, Lbcd$1;->c:Lbcd;

    iput-object p2, p0, Lbcd$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lbcd$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    new-instance v1, Lbbo;

    invoke-direct {v1}, Lbbo;-><init>()V

    .line 132
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v2

    invoke-virtual {v2}, Lbdu;->d()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1e

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, 0x1

    .line 133
    new-instance v9, Lbcd$1$1;

    invoke-direct {v9, p0, v2, v0, p1}, Lbcd$1$1;-><init>(Lbcd$1;ILjava/util/HashSet;Ljava/util/List;)V

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    invoke-virtual/range {v1 .. v8}, Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V

    return-void
.end method
