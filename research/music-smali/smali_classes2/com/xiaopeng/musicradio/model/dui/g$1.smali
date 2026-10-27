.class Lcom/xiaopeng/musicradio/model/dui/g$1;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$1;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/dui/g$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$1;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$1;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/dui/g$1;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/g$1;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/g$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/dui/g$1$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/g$1;)V

    const-string v1, "onPlay"

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/dui/j;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    .line 83
    iget v1, p0, Lcom/xiaopeng/musicradio/model/dui/g$1;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/dui/g$1;->a:I

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/dui/g$1;->a()V

    return-void
.end method
