.class Lcom/xiaopeng/musicradio/model/dui/g$18;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;Ljava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$18;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/g$18;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$18;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/g$18;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->a(Ljava/lang/String;)V

    return-void
.end method
